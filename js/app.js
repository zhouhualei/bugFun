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
            '<span>cepm</span><br/><span>ccsidm</span><br/><span>ican</span>', //this is the content of the html box. add the image here or anything you want really.
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
});

