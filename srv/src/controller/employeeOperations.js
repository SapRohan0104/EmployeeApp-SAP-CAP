
const onBeforeEmployeeCreate = async (req) => {
    console.log("Before Event is triggered");
}

const onAfterEmployeeCreate = async (req) => {
    console.log("After Event is triggered");
}

module.exports = {
    onBeforeEmployeeCreate,
    onAfterEmployeeCreate
}