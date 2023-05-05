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

export async function getPages(): Promise<PayloadCollection<Page>> {
  
  const data = await apiFetch(
    `http://localhost:3001/api/pages`
  )
  return data
}

export async function getPageBySlug(): Promise<PayloadCollection<Page>> {
  //ToDo: find by slug 
  const data = await apiFetch(
    `http://localhost:3001/api/pages`
  )
  return data
}