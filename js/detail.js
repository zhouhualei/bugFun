/// <reference path="Scripts/typings/knockout/knockout.d.ts"/>
var ViewModel = (function () {
    function ViewModel() {
        var _this = this;
        this.bugId = "bug18238";
        this.severity = 2;
        this.ratings = [0, 7, 4, 5, 3, 2];
        this.ratingsRatio = [0, -3, -1, 0, 1, 3];
        this.followers = 4;
        this.favorites = 2;
        this.views = 15;
        this.normalizedRatings = ko.pureComputed(function () {
            var max = _this.ratings[5];
            for (var i = 5; i > 0; i--) {
                if (_this.ratings[i] > max)
                    max = _this.ratings[i];
            }
            var result = [];
            for (var i = 5; i > 0; i--) {
                result.push({
                    score: i,
                    percentage: Math.floor(_this.ratings[i] * 100 / max) + "%"
                });
            }
            return result;
        });
        this.followersThreshold = 5;
        this.favoriteThreshold = 3;
        this.viewsThreshold = 20;
        this.rating = ko.pureComputed(function () {
            var base;
            if (_this.severity <= 2) {
                base = 4;
            }
            else {
                base = 3;
            }
            var delta = 0, all = 0;
            for (var i = 1; i <= 5; i++) {
                delta += _this.ratings[i] * _this.ratingsRatio[i];
                all += _this.ratings[i];
            }
            base += delta / all;
            if (_this.followers > _this.followersThreshold) {
                base += 0.5;
            }
            if (_this.favorites > _this.favoriteThreshold) {
                base += 0.5;
            }
            if (_this.views > _this.viewsThreshold) {
                base += 0.5;
            }
            return base.toPrecision(2);
        });
        this.tags = ["ui", "dev", "cepm"];
        this.follow = ko.observable(false);
        this.favorite = ko.observable(true);
        this.url = "http://bestclipartblog.com/clipart-pics/bug-clip-art-7.jpg";
        this.description = "This is a very serious bug.";
        this.upRating = 4;
        this.upRatings = ko.pureComputed(function () {
            return new Array(_this.upRating);
        });
        this.downRatings = ko.pureComputed(function () {
            return new Array(5 - _this.upRating);
        });
        this.comments = [
            {
                name: "Wang Yu",
                img: "http://wwwin.cisco.com/dir/photo/zoom/yuw3.jpg",
                content: "I don't know this bug."
            },
            {
                name: "Warren Zhou",
                img: "http://wwwin.cisco.com/dir/photo/zoom/warzhou.jpg",
                content: "I think it's your bug."
            },
            {
                name: "Yin Qian",
                img: "http://wwwin.cisco.com/dir/photo/zoom/yiqian.jpg",
                content: "I am sure of that."
            },
            {
                name: "Wang Yu",
                img: "http://wwwin.cisco.com/dir/photo/zoom/yuw3.jpg",
                content: "Sorry, my fault."
            }
        ];
    }
    return ViewModel;
})();
//# sourceMappingURL=app.js.map