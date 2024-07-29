const path = require("path");
const fs = require("fs");

/**
 * Recursively searches for files with a specific extension in a directory and its subdirectories.
 * @param {string} startPath - The starting directory path.
 * @param {string} extension - The file extension to search for.
 * @returns {string[]} - An array of file paths that match the extension.
 */
function findFiles(startPath, extension) {
	const result = [];

	/**
	 * Helper function to search a directory.
	 * @param {string} dir - The directory to search.
	 */
	function searchDirectory(dir) {
		const items = fs.readdirSync(dir);

		items.forEach((item) => {
			const fullPath = path.join(dir, item);
			const stat = fs.statSync(fullPath);

			if (stat.isDirectory()) {
				searchDirectory(fullPath);
			} else if (stat.isFile() && path.extname(fullPath) === extension) {
				result.push(fullPath);
			}
		});
	}

	searchDirectory(startPath);
	return result;
}

/**
 * Merges the content of all files with a specific extension in a directory and its subdirectories,
 * excluding lines that contain `---@meta`.
 * @param {string} startPath - The starting directory path.
 * @param {string} extension - The file extension to search for.
 * @returns {string} - The merged content of all files.
 */
function mergeFiles(startPath, extension) {
	const files = findFiles(startPath, extension);
	let mergedContent = "---@meta\n\n";

	files.forEach((file) => {
		const content = fs.readFileSync(file, "utf8");
		const lines = content.split("\n");

		lines.forEach((line) => {
			if (!line.includes("---@meta")) {
				mergedContent += line + "\n";
			}
		});
	});

	return mergedContent;
}

/**
 * Merges the content of all files with a specific extension and saves the result to an output file.
 * @param {string} startPath - The starting directory path.
 * @param {string} extension - The file extension to search for.
 * @param {string} outputPath - The path to the output file.
 */
function saveMergedContent(startPath, extension, outputPath) {
	const mergedContent = mergeFiles(startPath, extension);

    if(fs.existsSync(outputPath)) {
        fs.unlinkSync(outputPath)
    }

    if(!fs.existsSync(path.dirname(outputPath))) {
        fs.mkdirSync(path.dirname(outputPath))
    }

	fs.writeFileSync(outputPath, mergedContent, "utf8");
}

const startPath = path.normalize(path.join(__dirname, "src/meta"));
const outputPath = path.normalize(path.join(__dirname, "meta/meta.lua"));

saveMergedContent(startPath, ".lua", outputPath);
