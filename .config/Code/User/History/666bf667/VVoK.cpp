// Text Objects

struct Texture {};
struct AudioSample {};

bool TextureLoadFromFile(char* filePath);
bool AudioLoadFromFile(char* filePath);

bool LoadAssets()
{
    // ci"
    const char* cString = "Change Me!";

    // ci(
    if (" Change inside '(' " && " Also Me ") {
        // ci{
        // Change Me!
        // Change Me!
        // Change Me!
        // Change Me!
        // Change Me!
    }

    // Delete Block
    // vipd
    if (false) {
        // Long buggy code
        // Long buggy code
        // Long buggy code
        // Long buggy code
        // Long buggy code
        return false;
    }

    // Change 'resources' to 'res'
    // viw Visual-Block
    Texture tex1 = TextureLoadFromFile("../resources/tex1.bmp");
    Texture tex2 = TextureLoadFromFile("../resources/tex2.bmp");
    Texture tex3 = TextureLoadFromFile("../resources/tex3.bmp");
    Texture tex4 = TextureLoadFromFile("../resources/tex4.bmp");
    Texture tex5 = TextureLoadFromFile("../resources/tex5.bmp");

    AudioSample audio1 = AudioLoadFromFile("../resources/audio1.wav");
    AudioSample audio2 = AudioLoadFromFile("../resources/audio2.wav");
    AudioSample audio3 = AudioLoadFromFile("../resources/audio3.wav");
    AudioSample audio4 = AudioLoadFromFile("../resources/audio4.wav");
    AudioSample audio5 = AudioLoadFromFile("../resources/audio5.wav");

    return true;
}