import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'

// https://vitejs.dev/config/
export default defineConfig({
    plugins: [vue()],
  // devServer
    server:{
        proxy:{
            '/api':{
                target:'http://127.0.0.1:8080',
                changeOrigin: true,
                // ws:true,
                // pathRewrite: {
                //     '^/api': '' // 以'/api'开头的url会进行接口转发
                // },
                rewrite:path=>path.replace(/^\/api/,'')
            }
        },
        host:'0.0.0.0'
    }
})
