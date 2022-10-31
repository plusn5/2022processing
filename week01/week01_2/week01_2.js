function setup() {
    initializeFields();
    createCanvas(500, 500);
}

function draw() {
    background(color(0xFF, 0xFF, 0xF2));
    fill(color(0xF5, 0xFF, 0xFA));
    // 長方形（X起始位置, Y起始位置, 長, 寬）
    rect(100, 100, 100, 150);
    rect(mouseX, mouseY, 100, 150);
}

function initializeFields() {
}
