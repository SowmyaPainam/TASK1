sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"project1/test/integration/pages/SalesOrderList",
	"project1/test/integration/pages/SalesOrderObjectPage",
	"project1/test/integration/pages/SalesOrderItemObjectPage"
], function (JourneyRunner, SalesOrderList, SalesOrderObjectPage, SalesOrderItemObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('project1') + '/test/flp.html#app-preview',
        pages: {
			onTheSalesOrderList: SalesOrderList,
			onTheSalesOrderObjectPage: SalesOrderObjectPage,
			onTheSalesOrderItemObjectPage: SalesOrderItemObjectPage
        },
        async: true
    });

    return runner;
});

