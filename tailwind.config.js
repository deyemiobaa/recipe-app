module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js','./*.html', './ecommerce/*.html', './assets/**/*.js'
  ],
  theme: {
    extend: {
      colors: {
        light: '#ffffff',
        accent: '#0d9965',
        accentH: '#098255',
        thead: '#f7f8f9',
        textHeading: '#1f2937',
        textColor: '#6b7280',
      },
    },
  },
  plugins: [require("tailgrids/plugin")],
};
