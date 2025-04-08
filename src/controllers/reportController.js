const PDFDocument = require("pdfkit");

const userModel = require("../models/userModel");
const postModel = require("../models/postModel");

const exportUserPDF = async (req, res) => {
    try {
        const users = await userModel.getUsers();

        res.setHeader("Content-Type", "application/pdf");
        res.setHeader("Content-Disposition", "inline; filename=users.pdf");

        const doc = new PDFDocument();
        doc.pipe(res);

        // Título
        doc.fontSize(20).text("Relatório de Usuários", { align: "center" });
        doc.moveDown(); 

        // Cabeçalho da Tabela
        const tableTop = 130; 
        const rowHeight = 20;
        const columnWidths = [50, 150, 200, 50];
        let y = tableTop;

        doc.fontSize(12).font("Helvetica-Bold");
        doc.text("Id", 50, y, { width: columnWidths[0], align: "left" });
        doc.text("Name", 100, y, { width: columnWidths[1], align: "left" });
        doc.text("Email", 250, y, { width: columnWidths[2], align: "left" });
        doc.text("Age", 450, y, { width: columnWidths[3], align: "left" });
        doc.moveTo(50, y + rowHeight - 5).lineTo(500, y + rowHeight - 5).stroke(); 

        // Dados da Tabela
        doc.font("Helvetica");
        y += rowHeight;
        users.forEach((user) => {
            doc.text(user.id, 50, y, { width: columnWidths[0], align: "left" });
            doc.text(user.name, 100, y, { width: columnWidths[1], align: "left" });
            doc.text(user.email, 250, y, { width: columnWidths[2], align: "left" });
            doc.text(user.age, 450, y, { width: columnWidths[3], align: "left" });
            y += rowHeight;

            doc.moveTo(50, y - 5).lineTo(500, y - 5).stroke();
        });

        doc.end();
    } catch (error) {
        res.status(500).json({ message: "Erro ao gerar o PDF" });
    }
};

const exportPotsPDF = async (req, res) => {
    try {
        const posts = await postModel.getPosts();

        res.setHeader("Content-Type", "application/pdf");
        res.setHeader("Content-Disposition", "inline; filename=posts.pdf");

        const doc = new PDFDocument();
        doc.pipe(res);

        // Título
        doc.fontSize(20).text("Relatório de Posts", { align: "center" });
        doc.moveDown(); 

        // Cabeçalho da Tabela
        const tableTop = 150;
        const rowHeight = 20;
        const rowHeightTable = 130;
        const columnWidths = [50, 100, 150, 100, 100];
        let y = tableTop;

        doc.fontSize(12).font("Helvetica-Bold");
        doc.text("Id", 50, y, { width: columnWidths[0], align: "left" });
        doc.text("Image", 100, y, { width: columnWidths[1], align: "left" });
        doc.text("Description", 220, y, { width: columnWidths[2], align: "left" });
        doc.text("Add Person", 400, y, { width: columnWidths[3], align: "left" });
        doc.text("Localization", 500, y, { width: columnWidths[4], align: "left" });
        doc.moveTo(50, y + rowHeight - 5).lineTo(600, y + rowHeight - 5).stroke(); 

        // Dados da Tabela
        doc.font("Helvetica");
        y += rowHeight;
        posts.forEach((post) => {
            doc.text(post.id, 50, y, { width: columnWidths[0], align: "left" });
            doc.text(post.image, 100, y, { width: columnWidths[1], align: "left" });
            doc.text(post.description, 220, y, { width: columnWidths[2], align: "left" });
            doc.text(post.add_person, 400, y, { width: columnWidths[3], align: "left" });
            doc.text(post.localization, 500, y, { width: columnWidths[4], align: "left" });
            y += rowHeightTable;
            
            doc.moveTo(50, y - 5).lineTo(600, y - 5).stroke();
        });

        doc.end();
    } catch (error) {
        res.status(500).json({ message: "Erro ao gerar o PDF" });
    }
};

module.exports = { exportUserPDF, exportPotsPDF };