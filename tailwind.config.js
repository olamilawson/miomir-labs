/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    'docs/*.html'
  ],
  theme: {
    extend: {
      colors: {
        bone: '#F9F7F2',
        surface: '#fff8f7',
        'surface-container-lowest': '#ffffff',
        'surface-container-low': '#fdf1f0',
        'surface-container': '#f7ebea',
        'surface-container-high': '#f1e6e4',
        'surface-container-highest': '#ebe0df',
        'surface-dim': '#e2d8d6',
        'ink-black': '#111111',
        oxblood: '#2D0A0A',
        'technical-gray': '#8C8C8C',
        'on-surface-variant': '#514342',
        'hairline-stroke': 'rgba(45, 10, 10, 0.15)'
      },
      spacing: {
        unit: '4px',
        gutter: '24px',
        'margin-narrow': '48px',
        'margin-wide': '120px',
        'section-break': '80px'
      },
      fontFamily: {
        'display-xl': ['"Bodoni Moda"', 'Georgia', 'serif'],
        'headline-lg': ['"Bodoni Moda"', 'Georgia', 'serif'],
        'headline-lg-mobile': ['"Bodoni Moda"', 'Georgia', 'serif'],
        'body-md': ['"Hanken Grotesk"', 'system-ui', 'sans-serif'],
        'body-lg': ['"Hanken Grotesk"', 'system-ui', 'sans-serif'],
        'label-technical': ['"JetBrains Mono"', 'ui-monospace', 'monospace'],
        'index-marker': ['"JetBrains Mono"', 'ui-monospace', 'monospace']
      },
      fontSize: {
        'display-xl': ['72px', { lineHeight: '80px', letterSpacing: '-0.02em', fontWeight: '700' }],
        'headline-lg': ['48px', { lineHeight: '56px', fontWeight: '600' }],
        'headline-lg-mobile': ['32px', { lineHeight: '40px', fontWeight: '600' }],
        'body-md': ['16px', { lineHeight: '24px', fontWeight: '400' }],
        'body-lg': ['18px', { lineHeight: '28px', fontWeight: '400' }],
        'label-technical': ['12px', { lineHeight: '16px', letterSpacing: '0.05em', fontWeight: '500' }],
        'index-marker': ['10px', { lineHeight: '12px', fontWeight: '700' }]
      }
    }
  },
  plugins: []
}
