module.exports = {
  purge: [],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      fontFamily: {
        ubuntu: ['Ubuntu']
      },
      colors: {
        background: '#F2F6FF',
        blacktext: '#23233C',
        textgray: '#7F8DA0',
        green: {
          light: '#D0F0D6',
          dark: '#6CC57C',
          register: '#6BC37C'
        },
        footermenu: '#3A466D',
        socialmedia: '#929FC7',
        redtext: '#EE6A6E',
      }
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
}
