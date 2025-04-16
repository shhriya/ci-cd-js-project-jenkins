// test.js
const greet = require('./main');

if (greet() === "Hello from main.js!") {
  console.log("✅ Test passed!");
  process.exit(0);
} else {
  console.error("❌ Test failed!");
  process.exit(1);
}
