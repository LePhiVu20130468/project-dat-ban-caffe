(function ($) {
    'use strict';
    $(function () {
        var body = $('body');
        var contentWrapper = $('.content-wrapper');
        var scroller = $('.container-scroller');
        var footer = $('.footer');
        var sidebar = $('.sidebar');

        //Add active class to nav-link based on url dynamically
        //Active class can be hard coded directly in html file also as required

        function addActiveClass(element) {
            if (current === "") {
                //for root url
                if (element.attr('href').indexOf("index.html") !== -1) {
                    element.parents('.nav-item').last().addClass('active');
                    if (element.parents('.sub-menu').length) {
                        element.closest('.collapse').addClass('show');
                        element.addClass('active');
                    }
                }
            } else {
                //for other url
                if (element.attr('href').indexOf(current) !== -1) {
                    element.parents('.nav-item').last().addClass('active');
                    if (element.parents('.sub-menu').length) {
                        element.closest('.collapse').addClass('show');
                        element.addClass('active');
                    }
                    if (element.parents('.submenu-item').length) {
                        element.addClass('active');
                    }
                }
            }
        }

        var current = location.pathname.split("/").slice(-1)[0].replace(/^\/|\/$/g, '');
        $('.nav li a', sidebar).each(function () {
            var $this = $(this);
            addActiveClass($this);
        })

        $('.horizontal-menu .nav li a').each(function () {
            var $this = $(this);
            addActiveClass($this);
        })

        //Close other submenu in sidebar on opening any

        sidebar.on('show.bs.collapse', '.collapse', function () {
            sidebar.find('.collapse.show').collapse('hide');
        });


        //Change sidebar and content-wrapper height
        applyStyles();

        function applyStyles() {
            //Applying perfect scrollbar
            if (!body.hasClass("rtl")) {
                if ($('.settings-panel .tab-content .tab-pane.scroll-wrapper').length) {
                    const settingsPanelScroll = new PerfectScrollbar('.settings-panel .tab-content .tab-pane.scroll-wrapper');
                }
                if ($('.chats').length) {
                    const chatsScroll = new PerfectScrollbar('.chats');
                }
                if (body.hasClass("sidebar-fixed")) {
                    if ($('#sidebar').length) {
                        var fixedSidebarScroll = new PerfectScrollbar('#sidebar .nav');
                    }
                }
            }
        }

        $('[data-toggle="minimize"]').on("click", function () {
            if ((body.hasClass('sidebar-toggle-display')) || (body.hasClass('sidebar-absolute'))) {
                body.toggleClass('sidebar-hidden');
            } else {
                body.toggleClass('sidebar-icon-only');
            }
        });

        //checkbox and radios
        $(".form-check label,.form-radio label").append('<i class="input-helper"></i>');

        //Horizontal menu in mobile
        $('[data-toggle="horizontal-menu-toggle"]').on("click", function () {
            $(".horizontal-menu .bottom-navbar").toggleClass("header-toggled");
        });
        // Horizontal menu navigation in mobile menu on click
        var navItemClicked = $('.horizontal-menu .page-navigation >.nav-item');
        navItemClicked.on("click", function (event) {
            if (window.matchMedia('(max-width: 991px)').matches) {
                if (!($(this).hasClass('show-submenu'))) {
                    navItemClicked.removeClass('show-submenu');
                }
                $(this).toggleClass('show-submenu');
            }
        })

        $(window).scroll(function () {
            if (window.matchMedia('(min-width: 992px)').matches) {
                var header = $('.horizontal-menu');
                if ($(window).scrollTop() >= 70) {
                    $(header).addClass('fixed-on-scroll');
                } else {
                    $(header).removeClass('fixed-on-scroll');
                }
            }
        });
    });

    // focus input when clicking on search icon
    $('#navbar-search-icon').click(function () {
        $("#navbar-search-input").focus();
    });

    // tuyet roi
    document.write('<style type="text/css"> .snow-container { position: fixed; width: 100%; max-width: 100%; z-index: 99999; pointer-events: none; overflow: hidden; top: 0; height: 100%; } .snow { display: block; position: absolute; z-index: 2; top: 0; right: 0; bottom: 0; left: 0; pointer-events: none; -webkit-transform: translate3d(0,-100%,0); transform: translate3d(0,-100%,0); -webkit-animation: snow linear infinite; animation: snow linear infinite; } .snow.foreground { background-image: url("https://itexpress.vn/API/files/img/snow-medium.png"); -webkit-animation-duration: 15s; animation-duration: 10s; } .snow.foreground.layered { -webkit-animation-delay: 7.5s; animation-delay: 7.5s; } .snow.middleground { background-image: url(https://itexpress.vn/API/files/img/snow-medium.png); -webkit-animation-duration: 20s; animation-duration: 15s; } .snow.middleground.layered { -webkit-animation-delay: 10s; animation-delay: 10s; } .snow.background { background-image: url(https://itexpress.vn/API/files/img/snow-medium.png); -webkit-animation-duration: 25s; animation-duration: 20s; } .snow.background.layered { -webkit-animation-delay: 12.5s; animation-delay: 12.5s; } @-webkit-keyframes snow { 0% { -webkit-transform: translate3d(0,-100%,0); transform: translate3d(0,-100%,0); } 100% { -webkit-transform: translate3d(5%,100%,0); transform: translate3d(5%,100%,0); } } @keyframes snow { 0% { -webkit-transform: translate3d(0,-100%,0); transform: translate3d(0,-100%,0); } 100% { -webkit-transform: translate3d(5%,100%,0); transform: translate3d(5%,100%,0); } } </style> <div class="snow-container"> <div class="snow foreground"></div> <div class="snow foreground layered"></div> <div class="snow middleground"></div> <div class="snow middleground layered"></div> <div class="snow background"></div> <div class="snow background layered"></div></div>');
    //tuyet roi - end
})(jQuery);