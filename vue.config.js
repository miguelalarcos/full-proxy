module.exports = {
    devServer: {
      proxy: {
        '/api/*': {
            target: 'http://api:3000',
            changeOrigin: true,
            //logLevel: 'debug',
        }
    }
  }
}
