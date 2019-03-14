jQuery(function($) {
    $('#toBottom').click(function(e) {
        e.preventDefault();
        $('html,body').animate(
            {
                scrollTop: $('#header').height() + $('#rectangle').height() - 20
            },
            200
        );
    });

    $('#backToTop').click(function(e) {
        e.preventDefault();
        $('html,body').animate({ scrollTop: 0 }, 200);
    });

    $('.grid').masonry({
        itemSelector: '.grid-item',
        columnWidth: 300,
        isFitWidth: true,
        gutter: 30
    });

    $('#nav-collapse-search').submit(function() {
        const keyword = $('#nav-collapse-search #search-labs-keyword')
            .val()
            .trim();
        if (keyword) {
            window.location = '/search/#/' + keyword;
        }
        return false;
    });

    $('#side-nav-toggle').on('click', function() {
        if ($(this).hasClass('opened')) {
            $('#navigation').css('top', 0);
        } else {
            $('#navigation').css('top', $(window).scrollTop());
        }
        $($(this)).toggleClass('opened');
        $($(this).data('target')).toggleClass('opened');
        $('#main-body').toggleClass('pushed');
    });

    $(window).scroll(function() {
        if ($('#side-nav-toggle').hasClass('opened')) {
            $('#navigation').css('top', $(window).scrollTop());
        } else {
            $('#navigation').css('top', 0);
        }
    });

    $(window).resize(function() {
        if ($(window).width() >= 767) {
            $('#navigation').css('top', 0);
            $('#side-nav-toggle').removeClass('opened');
            $($('#side-nav-toggle').data('target')).removeClass('opened');
            $('#main-body').removeClass('pushed');
        }
    });

    //Navbar Overrides:

    var $window = $(window);
    var $menuAnchor = $('#nav-main-menu .dropdown-toggle');

    function stickyNavBar() {
        var alwaysSticky = 769;
        var sctop = window.STICKY_SCROLL_TOP || 768;
        if (
            $(window).width() < alwaysSticky ||
            $(document).scrollTop() > sctop
        ) {
            $('#navigation').addClass('sticky');
        } else {
            $('#navigation').removeClass('sticky');
        }

        if (windowWidth < 769) {
            if (
                !$('#navigation').hasClass('sticky') ||
                $('#navigation').scrollTop()
            ) {
                $('#navigation').addClass('sticky');
            }
        } else {
            if ($('#navigation').hasClass('sticky')) {
                var navHeight = $('main').length
                    ? $('main').offset().top - $('#sticky-nav').outerHeight()
                    : $('#app-user-services').offset().top -
                      $('#sticky-nav').outerHeight();
                if (window.pageYOffset <= navHeight) {
                    $('#navigation').removeClass('sticky');
                }
            } else {
                var navOffset =
                    $('#menu-main-menu').offset().top -
                    $('#navbar-collapse-1').offset().top;
                if (window.pageYOffset > navOffset) {
                    $('#navigation').addClass('sticky');
                }
            }
        }



    }

    function sizeDependentMenuBehaviour() {
        var windowWidth = $(window).width();
        var breakpoint = 0;
        if (windowWidth < breakpoint) {
            $menuAnchor.attr('data-toggle', 'dropdown');
        } else {
            $menuAnchor.attr('data-toggle', '');
        }
        if (!window.STICKYNAV_DISABLED) {
            stickyNavBar();
        }
    }

    function centerModal() {
        $(this).css('display', 'block');
        var $dialog = $(this).find('.modal-dialog'),
            offset = ($(window).height() - $dialog.height()) / 2,
            bottomMargin = parseInt($dialog.css('marginBottom'), 10);

        // Make sure you don't hide the top part of the modal w/ a negative margin if it's longer than the screen height, and keep the margin equal to the bottom margin of the modal
        if (offset < bottomMargin) offset = bottomMargin;
        $dialog.css('margin-top', offset);
    }

    $(document).on('show.bs.modal', '.image-modal', centerModal);
    $(window).on('resize', function() {
        $('.image-modal:visible').each(centerModal);
    });

    sizeDependentMenuBehaviour();
    $window.resize(sizeDependentMenuBehaviour);
    $window.scroll(function() {
        if (!window.STICKYNAV_DISABLED) {
            /* Navbar minimization */
            stickyNavBar();
        }

        if (!window.BACKTOTOP_DISABLED) {
            backToTop();
        }
    });
    $('#backToTop').click(function() {
        $('html, body').animate({ scrollTop: 0 }, 600);
        return false;
    });


});
