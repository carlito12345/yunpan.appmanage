// Generate transparent native icon strips from the pinned upstream Grok Ball SVG engine.
// Usage: node render_grok_pets.cjs <upstream/src/grok-ball.js> <output-directory>
const fs = require('node:fs');
const path = require('node:path');
const vm = require('node:vm');
const sharp = require('sharp');

const [engine, output] = process.argv.slice(2);
const edge = 192;
const frameCount = 12;
const columns = 4;
const ticksPerFrame = 9;

const escape = value => String(value).replaceAll('&', '&amp;')
    .replaceAll('"', '&quot;').replaceAll('<', '&lt;');

class SvgElement {
    constructor(tag) {
        this.tag = tag;
        this.attributes = {};
        this.children = [];
        this.style = {};
    }
    setAttribute(name, value) { this.attributes[name] = value; }
    getAttribute(name) { return this.attributes[name]; }
    appendChild(child) { this.children.push(child); child.parentNode = this; }
    removeChild(child) {
        this.children.splice(this.children.indexOf(child), 1);
        child.parentNode = null;
    }
    remove() { this.parentNode?.removeChild(this); }
    serialize() {
        const attributes = { ...this.attributes };
        if (this.style.display === 'none') attributes.display = 'none';
        const properties = Object.entries(attributes).map(([name, value]) => ` ${name}="${escape(value)}"`).join('');
        const content = escape(this.textContent ?? '') + this.children.map(child => child.serialize()).join('');
        return `<${this.tag}${properties}>${content}</${this.tag}>`;
    }
}

async function main() {
    let time = 1000;
    let pendingFrame;
    let seed = 20261105;
    const math = Object.create(Math);
    math.random = () => ((seed = (Math.imul(seed, 1664525) + 1013904223) >>> 0) / 2 ** 32);
    const window = {};
    vm.runInNewContext(fs.readFileSync(engine, 'utf8'), {
        window, console, Math: math, document: { createElementNS: (_, tag) => new SvgElement(tag) },
        performance: { now: () => time },
        requestAnimationFrame: callback => { pendingFrame = callback; return 1; }
    });
    const grok = window.GrokBall;
    if (grok.EMOTIONS.length !== 32) throw new Error('Unexpected upstream emotion catalog');
    fs.mkdirSync(output, { recursive: true });
    for (const emotion of grok.EMOTIONS) {
        const mount = new SvgElement('div');
        const ball = grok.create(mount, { emotion: emotion.id, eyeScale: 1.15 });
        const svg = mount.children[0];
        svg.setAttribute('xmlns', 'http://www.w3.org/2000/svg');
        svg.setAttribute('width', edge);
        svg.setAttribute('height', edge);
        const frames = [];
        for (let frame = 0; frame < frameCount; frame++) {
            for (let tick = 0; tick < ticksPerFrame; tick++) {
                time += 1000 / 60;
                pendingFrame(time);
            }
            frames.push({ input: await sharp(Buffer.from(svg.serialize())).png().toBuffer(),
                top: edge * Math.floor(frame / columns), left: edge * (frame % columns) });
        }
        ball.destroy();
        await sharp({ create: { width: edge * columns, height: edge * frameCount / columns, channels: 4, background: '#00000000' } })
            .composite(frames).png().toFile(path.join(output, `${emotion.id}.png`));
    }
    console.log(grok.EMOTIONS.map(({ id, name }) => `${id} ${name}`).join('\n'));
}

main().catch(error => { console.error(error); process.exitCode = 1; });
