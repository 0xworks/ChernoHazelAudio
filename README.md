## Freeman40  branch ##
This is the "Freeman40" branch of my fork of TheCherno/HazelAudio.  It contains experimental code, some changes to make HazelAudio easier to use in other projects, small bug fixes and other random hacks.  Other Hazel projects of mine will generally use this branch.

This branch should not be used to create PRs for upstream TheCherno/HazelAudio.

The "master" branch is intended to be kept in synch with upstream TheCherno/HazelAudio (and when convienient or necessary those changes can be merged into this Freeman40 branch.

For PRs to upstream TheCherno/HazelAudio, follow this workflow:
1) Get "master" in synch with upstream/master  (this will just be a fast-forward, since I do not do any other changes to master)
2) Branch from master
3) Checkout the branch and do the changes that you want to submit in the PR
4) Create PR from branch --> TheCherno/HazelAudio:master
5) (later, if/when the PR is accepted) do step 1 again (which should fast-forward to TheCherno/HazelAudio:master which now contains the changes from the PR, and then delete the PR branch (it's no longer needed)

# Hazel Audio

Hazel Audio is an audio library I wrote for the [Hazel Engine](https://hazelengine.com), built on top of [OpenAL Soft](https://openal-soft.org/). I've never written an audio library before so I figured I'd give it a shot, since I want to have a robust and powerful solution for Hazel.

This is the first version of the library that was written over a few hours, so there is a lot missing. I'll update this with information about various limitations as I go.

## Currently Supports
- .ogg and .mp3 files
- 3D spatial playback of audio sources

## TODO
- There are like a thousand compiler warnings, so definitely sort that out
- Unload audio sources
- Stream audio files
- Audio source seeking
- Listener positioning API
- Wave file support
- Effects

## Next version
I'm focusing on audio file streaming, seeking and unloading.

## Example
Check out the `HazelAudio-Examples` project for more, but it's super simple:
```cpp
// Initialize the audio engine
Hazel::Audio::Init();
// Load audio source from file, bool is for whether the source
// should be in 3D space or not
auto source = Hazel::AudioSource::LoadFromFile(filename, true);
// Play audio source
Hazel::Audio::Play(source);
```
and you can set various attributes on a source as well:
```cpp
source.SetPosition(x, y, z);
source.SetGain(2.0f);
source.SetLoop(true);
```

## Acknowledgements
- [OpenAL Soft](https://openal-soft.org/)
- [minimp3](https://github.com/lieff/minimp3)
- [libogg and Vorbis](https://www.xiph.org/)
