/// <reference path="../../typings/jquery/jquery.d.ts"/>
/// <reference path="../../typings/knockout/knockout.d.ts"/>
var ViewModel = (function () {
   var severityMap = {
      "S1": 1,
      "S2": 2,
      "S3": 3,
      "S4": 4,
      "S5": 5,
      "S6": 6
    };

    function userPage(userId) {
        return "/users/" + userId;
    };
    
    function UriHelper(stuff, userId, bugId) {
        var target = "/" + stuff + "_relationships.json";
        if (userId && bugId) {
            target = target + "?user_id=" + userId + "&bug_id=" + bugId;
        }
        return target;
    };
    
    function getRelationshipFor(stuff, userId, bugId, callback) {
        $.getJSON(UriHelper(stuff, userId, bugId), callback);
    };

    function putRelationshipFor(stuff, data) {
        $.post(UriHelper(stuff, data.user_id, data.bug_id), data);
    };
    
    function delRelationshipFor(stuff, data) {
        $.ajax({
            type: 'DELETE',
            url: UriHelper(stuff, data.user_id, data.bug_id),
            data: data 
        });
    }

    function ViewModel(params, userId, bugId) {
        var self = this;
        
        self.tags = ["ui", "cepm", "dev"];
        
        self.userId = userId || 1;
        self.bugId = bugId || 1;
        
        // Bug Details
        
        self.title = ko.observable("");
        self.description = ko.observable("");
        self.severity = ko.observable("");
        self.submiter = ko.observable("");
        self.views = ko.observable(0);
        self.score = ko.observable(5.5);
        self.ratings = ko.observableArray([1,1,1,1,1]);
        self.comments = ko.observableArray([]);
        self.followers_count = ko.observable(0);
        self.bookmarkusers_count = ko.observable(0);                
        
        self.severityLevel = ko.pureComputed(function() {
            return severityMap[self.severity()];
        });
        
        this.normalizedRatings = ko.pureComputed(function () {
            var ratings = self.ratings();
        	var max = ratings[0];
    	    for (var i = 0; i < 5; i++) {
                if (ratings[i] > max) max = ratings[i];
	        }
            if (max == 0) max = 1;
            
            var result = [];
        	for (var i = 0; i < 5; i++) {
        		result.push({
        			count: i,
        			percentage: Math.floor(ratings[i] * 100 / max) + "%"
        		});
        	}
        	return result;
        });

        $.getJSON("/bugs/" + self.bugId + ".json", function (data) {
            self.title(data.title);
            self.description(data.description);
            self.severity(data.severity);
            self.submiter(data.submiter);
            self.views(data.views);
            self.score(data.score);
            self.ratings(data.ratings);
            self.comments(data.comments);
            self.followers_count(data.followers_count);
            self.bookmarkusers_count(data.bookmarkusers_count);
        });

        self.getUserPage = function(context) {
            return userPage(context.id);
        }

        // My Rating
        
        self.myRating = ko.observable(0);
        self.canRate = ko.pureComputed(function () {
            return self.myRating() == 0;
        });
                
        this.stars = ko.pureComputed(function () {
            var five = [1, 2, 3, 4, 5];
            var rating = self.myRating();
            return five.map(function(x) {
                return {
                    rating: x,
                    fill: x <= rating
                };
            });
        });                    

        getRelationshipFor("rating", self.userId, self.bugId, function (data) {
            if (data.length > 0) {
                self.myRating(data[0].score);   
            };
        });
                
        self.rateIt = function (context) {
            self.myRating(context.rating);
            putRelationshipFor("rating", {
               user_id: self.userId,
               bug_id: self.bugId,
               score: context.rating
            });            
        };
        
        // My Follow
        
        self.myFollow = ko.observable(false);
        getRelationshipFor("follow", self.userId, self.bugId, function (data) {
            self.myFollow(data.length > 0);
        });
        
        // My Bookmark

        self.myBookmark = ko.observable(false);
        getRelationshipFor("bookmark", self.userId, self.bugId, function (data) {
            self.myBookmark(data.length > 0);
        });                
    };
    
    ViewModel.prototype.incFollow = function (x) {
        this.followers_count(this.followers_count() + x);       
    };
        
    ViewModel.prototype.toggleFollow = function () {
        if (this.myFollow()) {
            this.myFollow(false);
            this.incFollow(-1);
            delRelationshipFor("follow", {
                user_id: this.userId,
                bug_id: this.bugId                
            });
        } else {
            this.myFollow(true);
            this.incFollow(1);
            putRelationshipFor("follow", {
                user_id: this.userId,
                bug_id: this.bugId                
            });            
        }
    };
    
    ViewModel.prototype.incBookmark = function (x) {
        this.bookmarkusers_count(this.bookmarkusers_count() + x);       
    };
    
    ViewModel.prototype.toggleBookmark = function () {
        if (this.myBookmark()) {
            this.myBookmark(false);
            this.incBookmark(-1);
            delRelationshipFor("bookmark", {
                user_id: this.userId,
                bug_id: this.bugId                
            });                        
        } else {
            this.myBookmark(true);
            this.incBookmark(1);            
            putRelationshipFor("bookmark", {
                user_id: this.userId,
                bug_id: this.bugId                
            });            
        }
    };
    
    return ViewModel;
})();