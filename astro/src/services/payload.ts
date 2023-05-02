import type { PayloadCollection } from './types';
import qs from "qs";
import type { Page } from '../../../payload/src/payload-types';

async function apiFetch(url: string, options: any = {}) {
  const defaultOptions = {
    headers: {
      'Content-Type': 'application/json',
    },
  };

  const mergedOptions = {
    ...defaultOptions,
    ...options,
  };

  const res = await fetch(url, mergedOptions);
  if (res.ok) {
    return res.json();
  }
  throw new Error(
    `Error fetching page data: ${res.statusText} (${res.status})}`
  );
}

export async function getPages(query: any = null): Promise<PayloadCollection<Page>> {
  const stringifiedQuery = qs.stringify(
    query,
    { addQueryPrefix: true }
  );
  const data = await apiFetch(
    `http://localhost:3001/api/pages${stringifiedQuery}`
  )
  return data
}