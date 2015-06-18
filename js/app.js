$(function(){
	$("#serverity").selectpicker();
	$("#state").selectpicker();
	$("#submitby").selectpicker();
	$("#owner").selectpicker();
	
	 $("#project").popover({
            trigger:'manual',
            placement : 'bottom', //placement of the popover. also can use top, bottom, left or right
            title : 'Project', //this is the top title bar of the popover. add some basic css
            html: 'true', //needed to show html of course
            content : 
            '<span>CEPM</span><br/><span>CCSIDM</span><br/><span>ICAN</span>', //this is the content of the html box. add the image here or anything you want really.
            animation: false
        }).on("mouseenter", function () {
                    var _this = this;
                    $(this).popover("show");
                    $(this).siblings(".popover").on("mouseleave", function () {
                        $(_this).popover('hide');
                    });
                }).on("mouseleave", function () {
                    var _this = this;
                    setTimeout(function () {
                        if (!$(".popover:hover").length) {
                            $(_this).popover("hide")
                        }
                    }, 100);
                });

             
});   $("#release").popover({
            trigger:'manual',
            placement : 'bottom', //placement of the popover. also can use top, bottom, left or right
            title : 'Release', //this is the top title bar of the popover. add some basic css
            html: 'true', //needed to show html of course
            content : 
            '<span>Q1FY15</span><br/><span>Q2FY15</span><br/><span>Q3FY15</span>', //this is the content of the html box. add the image here or anything you want really.
            animation: false
        }).on("mouseenter", function () {
                    var _this = this;
                    $(this).popover("show");
                    $(this).siblings(".popover").on("mouseleave", function () {
                        $(_this).popover('hide');
                    });
                }).on("mouseleave", function () {
                    var _this = this;
                    setTimeout(function () {
                        if (!$(".popover:hover").length) {
                            $(_this).popover("hide")
                        }
                    }, 100);
                });

        $("#track").popover({
            trigger:'manual',
            placement : 'bottom', //placement of the popover. also can use top, bottom, left or right
            title : 'Track', //this is the top title bar of the popover. add some basic css
            html: 'true', //needed to show html of course
            content : 
            '<span>OM</span><br/><span>SCM</span><br/><span>IF</span><span>FCT</span>', //this is the content of the html box. add the image here or anything you want really.
            animation: false
        }).on("mouseenter", function () {
                    var _this = this;
                    $(this).popover("show");
                    $(this).siblings(".popover").on("mouseleave", function () {
                        $(_this).popover('hide');
                    });
                }).on("mouseleave", function () {
                    var _this = this;
                    setTimeout(function () {
                        if (!$(".popover:hover").length) {
                            $(_this).popover("hide")
                        }
                    }, 100);
                });

