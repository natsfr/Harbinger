use crate::ili9341screen;


static mut BUFFER : [u16; ili9341screen::WIDTH * ili9341screen::Height] =
    [0; ili9341screen::WIDTH * ili9341screen::Height];

pub struct Drawer {
}

impl Drawer {
    /// Reset the buffer to black
    pub fn clear() {
        unsafe {
            BUFFER.fill(0x0000)
        }
    }

    pub fn buffer() -> &'static [u16] {
        unsafe { &BUFFER }
    }

    pub fn rect(x : usize, y : usize, width : usize, height: usize, color: u16) {
        let base_ix = x * ili9341screen::WIDTH + y;

        for h in 0 .. width {
            let loc = base_ix + h * ili9341screen::WIDTH;
            unsafe {

            for v in 0 .. height {
                BUFFER[loc + v] = color;
            }
            }
        }
    }
}
