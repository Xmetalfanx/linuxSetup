import {unified} from 'unified'
import rehypeParse from 'rehype-parse'
import rehypeRemark from 'rehype-remark'
import remarkStringify from 'remark-stringify'

unified()
  .use(rehypeParse)
  .use(rehypeRemark)
  .use(remarkStringify, {
    bullet: '*',
    fence: '~',
    fences: true,
    incrementListMarker: false
  })
  .process('<h1>Hello, world!</h1>')
  .then((file) => {
    console.log(String(file))
  })