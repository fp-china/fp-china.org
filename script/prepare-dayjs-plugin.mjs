import fs from "node:fs";
import path from "node:path";

const pluginDir = path.join(process.cwd(), "node_modules", "dayjs", "plugin");
const source = path.join(pluginDir, "isToday.js");
const target = path.join(pluginDir, "isToday");

if (!fs.existsSync(source)) {
  console.error("Missing dayjs plugin file:", source);
  process.exit(1);
}

if (!fs.existsSync(target)) {
  try {
    fs.symlinkSync("isToday.js", target);
  } catch {
    fs.copyFileSync(source, target);
  }
}

console.log("Prepared dayjs plugin alias:", target);
