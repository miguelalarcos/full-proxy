module.exports = {
    devServer: {
      proxy: {
        '/api/*': {
            target: 'http://api:8888',
            changeOrigin: true,
            //logLevel: 'debug',
        }
    }
  }
}
