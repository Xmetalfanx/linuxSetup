import {remark} from 'remark'
import remarkPresetLintConsistent from 'remark-preset-lint-consistent'
import remarkPresetLintRecommended from 'remark-preset-lint-recommended'
import remarkPresetLintMarkdownStyleGuide from 'remark-preset-lint-markdown-style-guide'

main()

async function main() {
	const file = await remark()
		.use(remarkPresetLintConsistent)
		.use(remarkPresetLintRecommended)
		.use(remarkPresetLintMarkdownStyleGuide)
		.process(await read('example.md'))

	console.error(reporter(file))
}