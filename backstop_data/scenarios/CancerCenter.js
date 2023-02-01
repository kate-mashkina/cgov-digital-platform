module.exports = [
    {
        label: 'cancer center whole page focus on phone link desktop',
        testPath: '/about-cancer/coping/feelings/relaxation/duke-university',
        focusSelector: 'a[href="tel:1-888-275-3853"]',
        viewports: [
            {
                label: 'desktop',
                width: 1025,
                height: 600,
            },
        ],
    },
    {
        label: 'cancer center whole page focus on website link tablet',
        testPath: '/about-cancer/coping/feelings/relaxation/duke-university',
        focusSelector: 'a[href="http://www.dukecancerinstitute.org/"]',
        viewports: [
            {
                label: 'tablet',
                width: 650,
                height: 900,
            },
        ],
    },
    {
        label: 'cancer center accordion on mobile',
        testPath: '/about-cancer/coping/feelings/relaxation/duke-university',
        viewports: [
            {
                label: 'mobile',
                width: 320,
                height: 800,
            },
        ],
        selectors: [
            '.related-resources.list h6'
        ],
        selectorExpansion: false,
    },
    {
        label: 'cancer center expand accordion and then hover over link',
        testPath: '/about-cancer/coping/feelings/relaxation/duke-university',
        chainedActionSelectors: [
            {
                action: 'click',
                selector: '.related-resources.list h6',
            },
            {
                action: 'hover',
                selector: '.related-resources.list a',
            },
        ],
        postInteractionWait: 1000,
        viewports: [
            {
                label: 'mobile',
                width: 320,
                height: 800,
            },
        ],
    },
]