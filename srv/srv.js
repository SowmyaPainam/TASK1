const cds = require('@sap/cds');

module.exports = cds.service.impl(async function () {

  const { SalesOrder, SalesOrderItem } = this.entities;

  this.before('CREATE', SalesOrder, (req) => {
    if (!req.data.CustomerName) {
      req.error(400, 'CustomerName is mandatory and cannot be empty');
    }
  });

 
  this.before(['CREATE', 'UPDATE'], SalesOrderItem, (req) => {
    if (req.data.Quantity <= 0) {
      req.error(400, 'Quantity must be greater than 0');
    }
  });

});
