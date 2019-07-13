const fs = require('fs')
const path = './index.html'

const getText = (start, end) => {
  let html = fs.readFileSync(path, 'utf8')

  html = html.toString()
  const sliceStart = html.indexOf(start)
  const sliceEnd = html.indexOf(end)
  return html.slice(sliceStart, sliceEnd)
}

const getSentence = () => {
  const text = fs.readFileSync('./text.log', 'utf8')
  textArr = text.split('\n')
  const html = textArr.map(e => `<div class="text">${e}</div>`).reverse()
  return html.join('')
}

const before = getText('<!DOCTYPE html>', '<body>')
const sentence = getSentence()
const after = getText('<!-- insert -->', '</html>')

fs.writeFileSync(path, '')
fs.writeFileSync(path, `${before}${sentence}${after}`)
