import { error } from '@sveltejs/kit';

export function load() {
    // This tells the browser/bot: "This is a 404 error"
    // The user still sees your design from +page.svelte
    throw error(404, 'Not Found');
}