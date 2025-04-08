const express = require("express");
const router = express.Router();

const reportController = require("./../controllers/reportController");

router.get("/report/users/pdf", reportController.exportUserPDF);
router.get("/report/posts/pdf", reportController.exportPotsPDF);

module.exports = router;