$( document ).ready( function() {

    var grid = $('.grid').isotope({
        // main isotope options
        itemSelector: '.grid-item',
        // set layoutMode
        layoutMode: 'vertical',
        getSortData: {
            name: '.name',
            department: '.department',
            start_date: '.start_date',
            end_date: '.end_date'
        },
        sortBy: 'name',
        filter: '*'
    });

    $('#sorts').on('click', 'button', function() {
        var sortValue = $(this).attr('data-sort-value');
        $('#sorts').find('.is-checked').removeClass('is-checked');
        $(this).addClass('is-checked');
        grid.isotope({ sortBy: sortValue });
    });

    $('#filters').on('click', 'button', function() {
        var filterValue = $(this).attr('data-filter');
        $('#filters').find('.is-checked').removeClass('is-checked');
        $(this).addClass('is-checked');
        grid.isotope({ filter: filterValue });
    });

});
