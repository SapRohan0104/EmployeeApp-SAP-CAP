const cds = require("@sap/cds");
const { onBeforeEmployeeCreate, onAfterEmployeeCreate } = require("./src/controller/employeeOperations");

module.exports = cds.service.impl(async (srv) => {
    srv.before("CREATE", "Employee", onBeforeEmployeeCreate)
    srv.after("CREATE", "Employee", onAfterEmployeeCreate)
});