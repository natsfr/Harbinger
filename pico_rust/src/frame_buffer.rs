use crate::ili9341screen;


const buffer : [u16; ili9341screen::Width * ili9341screen::Height] =
    [0; ili9341screen::Width * ili9341screen::Height];

pub struct Drawer {
}

impl Drawer {
    /// Reset the buffer to black
    pub fn clear() { buffer.fill(0xFFFF) }

    pub fn buffer() -> &'static [u16] {
        &buffer
    }

    pub fn rect(x : usize, y : usize, width : usize, height: usize, color: u16) {
        let base_ix = x * ili9341screen::Width + y;

        for h in 0 .. width {
            let loc = base_ix + h * ili9341screen::Width;
            for v in 0 .. height {
                buffer[loc + v] = color;
            }
        }
    }
}
