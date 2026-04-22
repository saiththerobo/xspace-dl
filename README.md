# xspace-dl

Download X (Twitter) Spaces as MP4 files using `yt-dlp`.

## Requirements

- [`yt-dlp`](https://github.com/yt-dlp/yt-dlp)
- `ffmpeg`

## Usage

```bash
./dl.sh <date> <url>
```

**Example:**

```bash
./dl.sh 2026-04-22 https://x.com/i/spaces/...
```

Files are saved as:

```
<date> - <title> - <id>.mp4
```
