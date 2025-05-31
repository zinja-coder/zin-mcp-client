.class public Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
.super Ljava/lang/Object;
.source "BitmapFont.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;,
        Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;,
        Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;,
        Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    }
.end annotation


# static fields
.field private static final LOG2_PAGE_SIZE:I = 0x9

.field private static final PAGES:I = 0x80

.field private static final PAGE_SIZE:I = 0x200

.field public static final capChars:[C

.field public static final xChars:[C


# instance fields
.field private breakChars:[C

.field private final cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

.field final data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

.field private flipped:Z

.field private integer:Z

.field markupEnabled:Z

.field private ownsTexture:Z

.field regions:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/16 v0, 0xd

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->xChars:[C

    .line 60
    const/16 v0, 0x1a

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->capChars:[C

    return-void

    .line 59
    nop

    :array_0
    .array-data 2
        0x78s
        0x65s
        0x61s
        0x6fs
        0x6es
        0x73s
        0x72s
        0x63s
        0x75s
        0x6ds
        0x76s
        0x77s
        0x7as
    .end array-data

    .line 60
    nop

    :array_1
    .array-data 2
        0x4ds
        0x4es
        0x42s
        0x44s
        0x43s
        0x45s
        0x46s
        0x4bs
        0x41s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4cs
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 75
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "com/badlogic/gdx/utils/arial-15.fnt"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->classpath(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v2, "com/badlogic/gdx/utils/arial-15.png"

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->classpath(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;ZZ)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 1
    .param p1, "fontFile"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    .line 113
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Z)V
    .locals 1
    .param p1, "fontFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "imageFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "flip"    # Z

    .prologue
    .line 126
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;ZZ)V

    .line 127
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;ZZ)V
    .locals 4
    .param p1, "fontFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "imageFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "flip"    # Z
    .param p4, "integer"    # Z

    .prologue
    .line 134
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-direct {v0, p1, p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-direct {p0, v0, v1, p4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Z)V

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->ownsTexture:Z

    .line 136
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 1
    .param p1, "fontFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Z)V

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Z)V
    .locals 2
    .param p1, "fontFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p3, "flip"    # Z

    .prologue
    .line 106
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-direct {v0, p1, p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Z)V

    .line 107
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Z)V
    .locals 3
    .param p1, "fontFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "flip"    # Z

    .prologue
    .line 119
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-direct {v1, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    const/4 v0, 0x0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Z)V

    .line 120
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Z)V
    .locals 2
    .param p1, "data"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;
    .param p2, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p3, "integer"    # Z

    .prologue
    .line 147
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    :goto_0
    invoke-direct {p0, p1, v0, p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Z)V

    .line 148
    return-void

    .line 147
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Z)V
    .locals 8
    .param p1, "data"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;
    .param p2, "regions"    # [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p3, "integer"    # Z

    .prologue
    const/4 v7, 0x0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    if-eqz p2, :cond_0

    array-length v1, p2

    if-nez v1, :cond_3

    .line 157
    :cond_0
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->imagePaths:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->regions:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 158
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->regions:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 159
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->fontFile:Lcom/badlogic/gdx/files/FileHandle;

    if-nez v1, :cond_1

    .line 160
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->regions:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v3, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    iget-object v5, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->imagePaths:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v3, v4, v7}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    aput-object v2, v1, v0

    .line 158
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->regions:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v3, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    iget-object v5, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->imagePaths:[Ljava/lang/String;

    aget-object v5, v5, v0

    iget-object v6, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->fontFile:Lcom/badlogic/gdx/files/FileHandle;

    invoke-virtual {v6}, Lcom/badlogic/gdx/files/FileHandle;->type()Lcom/badlogic/gdx/Files$FileType;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/badlogic/gdx/Files;->getFileHandle(Ljava/lang/String;Lcom/badlogic/gdx/Files$FileType;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v3, v4, v7}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    aput-object v2, v1, v0

    goto :goto_1

    .line 166
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->ownsTexture:Z

    .line 172
    .end local v0    # "i":I
    :goto_2
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;)V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    .line 173
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v1, p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setUseIntegerPositions(Z)V

    .line 175
    iget-boolean v1, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->flipped:Z

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->flipped:Z

    .line 176
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    .line 177
    iput-boolean p3, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->integer:Z

    .line 178
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->load(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;)V

    .line 179
    return-void

    .line 168
    :cond_3
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->regions:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 169
    iput-boolean v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->ownsTexture:Z

    goto :goto_2
.end method

.method public constructor <init>(Z)V
    .locals 3
    .param p1, "flip"    # Z

    .prologue
    .line 83
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "com/badlogic/gdx/utils/arial-15.fnt"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->classpath(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v2, "com/badlogic/gdx/utils/arial-15.png"

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->classpath(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;ZZ)V

    .line 85
    return-void
.end method

.method static indexOf(Ljava/lang/CharSequence;CI)I
    .locals 2
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C
    .param p2, "start"    # I

    .prologue
    .line 770
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 771
    .local v0, "n":I
    :goto_0
    if-ge p2, v0, :cond_1

    .line 772
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, p1, :cond_0

    .line 773
    .end local p2    # "start":I
    :goto_1
    return p2

    .line 771
    .restart local p2    # "start":I
    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    move p2, v0

    .line 773
    goto :goto_1
.end method

.method static isWhitespace(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 790
    sparse-switch p0, :sswitch_data_0

    .line 797
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 795
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 790
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private load(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;)V
    .locals 26
    .param p1, "data"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    .prologue
    .line 182
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    .local v2, "arr$":[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    move v7, v6

    .end local v2    # "arr$":[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v6    # "i$":I
    .end local v10    # "len$":I
    .local v7, "i$":I
    :goto_0
    if-ge v7, v10, :cond_a

    aget-object v14, v2, v7

    .line 183
    .local v14, "page":[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-nez v14, :cond_1

    .line 182
    .end local v7    # "i$":I
    :cond_0
    add-int/lit8 v6, v7, 0x1

    .restart local v6    # "i$":I
    move v7, v6

    .end local v6    # "i$":I
    .restart local v7    # "i$":I
    goto :goto_0

    .line 184
    :cond_1
    move-object v3, v14

    .local v3, "arr$":[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    array-length v11, v3

    .local v11, "len$":I
    const/4 v6, 0x0

    .end local v7    # "i$":I
    .restart local v6    # "i$":I
    :goto_1
    if-ge v6, v11, :cond_0

    aget-object v5, v3, v6

    .line 185
    .local v5, "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-nez v5, :cond_2

    .line 184
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 187
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->regions:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-object/from16 v24, v0

    iget v0, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->page:I

    move/from16 v25, v0

    aget-object v15, v24, v25

    .line 189
    .local v15, "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    if-nez v15, :cond_3

    .line 191
    new-instance v24, Ljava/lang/IllegalArgumentException;

    const-string v25, "BitmapFont texture region array cannot contain null elements."

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 194
    :cond_3
    const/high16 v24, 0x3f800000    # 1.0f

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v9, v24, v25

    .line 195
    .local v9, "invTexWidth":F
    const/high16 v24, 0x3f800000    # 1.0f

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v8, v24, v25

    .line 197
    .local v8, "invTexHeight":F
    const/4 v12, 0x0

    .local v12, "offsetX":F
    const/4 v13, 0x0

    .line 198
    .local v13, "offsetY":F
    iget v0, v15, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    move/from16 v18, v0

    .line 199
    .local v18, "u":F
    iget v0, v15, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    move/from16 v19, v0

    .line 200
    .local v19, "v":F
    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v17, v0

    .line 201
    .local v17, "regionWidth":F
    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v16, v0

    .line 202
    .local v16, "regionHeight":F
    instance-of v0, v15, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move/from16 v24, v0

    if-eqz v24, :cond_4

    move-object v4, v15

    .line 204
    check-cast v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    .line 205
    .local v4, "atlasRegion":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    iget v12, v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    .line 206
    iget v0, v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalHeight:I

    move/from16 v24, v0

    iget v0, v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedHeight:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    iget v0, v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    move/from16 v25, v0

    sub-float v13, v24, v25

    .line 209
    .end local v4    # "atlasRegion":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    :cond_4
    iget v0, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcX:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v20, v0

    .line 210
    .local v20, "x":F
    iget v0, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcX:I

    move/from16 v24, v0

    iget v0, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v21, v0

    .line 211
    .local v21, "x2":F
    iget v0, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcY:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v22, v0

    .line 212
    .local v22, "y":F
    iget v0, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcY:I

    move/from16 v24, v0

    iget v0, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v23, v0

    .line 215
    .local v23, "y2":F
    const/16 v24, 0x0

    cmpl-float v24, v12, v24

    if-lez v24, :cond_6

    .line 216
    sub-float v20, v20, v12

    .line 217
    const/16 v24, 0x0

    cmpg-float v24, v20, v24

    if-gez v24, :cond_5

    .line 218
    iget v0, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v24, v24, v20

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    .line 219
    iget v0, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v24, v24, v20

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    .line 220
    const/16 v20, 0x0

    .line 222
    :cond_5
    sub-float v21, v21, v12

    .line 223
    cmpl-float v24, v21, v17

    if-lez v24, :cond_6

    .line 224
    iget v0, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v25, v21, v17

    sub-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    .line 225
    move/from16 v21, v17

    .line 228
    :cond_6
    const/16 v24, 0x0

    cmpl-float v24, v13, v24

    if-lez v24, :cond_8

    .line 229
    sub-float v22, v22, v13

    .line 230
    const/16 v24, 0x0

    cmpg-float v24, v22, v24

    if-gez v24, :cond_7

    .line 231
    iget v0, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v24, v24, v22

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    .line 232
    const/16 v22, 0x0

    .line 234
    :cond_7
    sub-float v23, v23, v13

    .line 235
    cmpl-float v24, v23, v16

    if-lez v24, :cond_8

    .line 236
    sub-float v1, v23, v16

    .line 237
    .local v1, "amount":F
    iget v0, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v24, v24, v1

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    .line 238
    iget v0, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v24, v24, v1

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    .line 239
    move/from16 v23, v16

    .line 243
    .end local v1    # "amount":F
    :cond_8
    mul-float v24, v20, v9

    add-float v24, v24, v18

    move/from16 v0, v24

    iput v0, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u:F

    .line 244
    mul-float v24, v21, v9

    add-float v24, v24, v18

    move/from16 v0, v24

    iput v0, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u2:F

    .line 245
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->flipped:Z

    move/from16 v24, v0

    if-eqz v24, :cond_9

    .line 246
    mul-float v24, v22, v8

    add-float v24, v24, v19

    move/from16 v0, v24

    iput v0, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v:F

    .line 247
    mul-float v24, v23, v8

    add-float v24, v24, v19

    move/from16 v0, v24

    iput v0, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v2:F

    goto/16 :goto_2

    .line 249
    :cond_9
    mul-float v24, v22, v8

    add-float v24, v24, v19

    move/from16 v0, v24

    iput v0, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v2:F

    .line 250
    mul-float v24, v23, v8

    add-float v24, v24, v19

    move/from16 v0, v24

    iput v0, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v:F

    goto/16 :goto_2

    .line 254
    .end local v3    # "arr$":[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v5    # "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v6    # "i$":I
    .end local v8    # "invTexHeight":F
    .end local v9    # "invTexWidth":F
    .end local v11    # "len$":I
    .end local v12    # "offsetX":F
    .end local v13    # "offsetY":F
    .end local v14    # "page":[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v15    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v16    # "regionHeight":F
    .end local v17    # "regionWidth":F
    .end local v18    # "u":F
    .end local v19    # "v":F
    .end local v20    # "x":F
    .end local v21    # "x2":F
    .end local v22    # "y":F
    .end local v23    # "y2":F
    .restart local v7    # "i$":I
    :cond_a
    return-void
.end method


# virtual methods
.method public computeGlyphAdvancesAndPositions(Ljava/lang/CharSequence;Lcom/badlogic/gdx/utils/FloatArray;Lcom/badlogic/gdx/utils/FloatArray;)V
    .locals 12
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "glyphAdvances"    # Lcom/badlogic/gdx/utils/FloatArray;
    .param p3, "glyphPositions"    # Lcom/badlogic/gdx/utils/FloatArray;

    .prologue
    const/4 v11, 0x0

    .line 466
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 467
    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 468
    const/4 v4, 0x0

    .line 469
    .local v4, "index":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 470
    .local v2, "end":I
    const/4 v7, 0x0

    .line 471
    .local v7, "width":F
    const/4 v5, 0x0

    .line 472
    .local v5, "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    .line 473
    .local v1, "data":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;
    iget v9, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_3

    .line 474
    :goto_0
    if-ge v4, v2, :cond_2

    .line 475
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 476
    .local v0, "ch":C
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v3

    .line 477
    .local v3, "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-eqz v3, :cond_1

    .line 478
    if-eqz v5, :cond_0

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->getKerning(C)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v7, v9

    .line 479
    :cond_0
    move-object v5, v3

    .line 480
    iget v9, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v9, v9

    invoke-virtual {p2, v9}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 481
    invoke-virtual {p3, v7}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 482
    iget v9, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v9, v9

    add-float/2addr v7, v9

    .line 474
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 485
    .end local v0    # "ch":C
    .end local v3    # "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :cond_2
    invoke-virtual {p2, v11}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 486
    invoke-virtual {p3, v7}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 504
    :goto_1
    return-void

    .line 488
    :cond_3
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v6, v9, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    .line 489
    .local v6, "scaleX":F
    :goto_2
    if-ge v4, v2, :cond_6

    .line 490
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 491
    .restart local v0    # "ch":C
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v3

    .line 492
    .restart local v3    # "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-eqz v3, :cond_5

    .line 493
    if-eqz v5, :cond_4

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->getKerning(C)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v6

    add-float/2addr v7, v9

    .line 494
    :cond_4
    move-object v5, v3

    .line 495
    iget v9, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v9, v9

    mul-float v8, v9, v6

    .line 496
    .local v8, "xadvance":F
    invoke-virtual {p2, v8}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 497
    invoke-virtual {p3, v7}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 498
    add-float/2addr v7, v8

    .line 489
    .end local v8    # "xadvance":F
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 501
    .end local v0    # "ch":C
    .end local v3    # "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :cond_6
    invoke-virtual {p2, v11}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 502
    invoke-virtual {p3, v7}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    goto :goto_1
.end method

.method public computeVisibleGlyphs(Ljava/lang/CharSequence;IIF)I
    .locals 9
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "availableWidth"    # F

    .prologue
    const/16 v8, 0x5b

    .line 510
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    .line 511
    .local v1, "data":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;
    move v3, p2

    .line 512
    .local v3, "index":I
    const/4 v5, 0x0

    .line 513
    .local v5, "width":F
    const/4 v4, 0x0

    .line 514
    .local v4, "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    iget v6, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    div-float/2addr p4, v6

    .line 516
    :goto_0
    if-ge v3, p3, :cond_3

    .line 517
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 518
    .local v0, "ch":C
    if-ne v0, v8, :cond_1

    iget-boolean v6, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->markupEnabled:Z

    if-eqz v6, :cond_1

    .line 519
    add-int/lit8 v3, v3, 0x1

    .line 520
    if-ge v3, p3, :cond_0

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-eq v6, v8, :cond_1

    .line 521
    :cond_0
    :goto_1
    if-ge v3, p3, :cond_5

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x5d

    if-eq v6, v7, :cond_5

    .line 522
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 526
    :cond_1
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v2

    .line 527
    .local v2, "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-eqz v2, :cond_5

    .line 528
    if-eqz v4, :cond_2

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->getKerning(C)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    .line 529
    :cond_2
    iget v6, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v6, v6

    add-float/2addr v6, v5

    sub-float/2addr v6, p4

    const v7, 0x3a83126f    # 0.001f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    .line 534
    .end local v0    # "ch":C
    .end local v2    # "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :cond_3
    sub-int v6, v3, p2

    return v6

    .line 530
    .restart local v0    # "ch":C
    .restart local v2    # "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :cond_4
    iget v6, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    .line 531
    move-object v4, v2

    .line 516
    .end local v2    # "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public containsCharacter(C)Z
    .locals 1
    .param p1, "character"    # C

    .prologue
    .line 694
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 668
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->ownsTexture:Z

    if-eqz v1, :cond_0

    .line 669
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->regions:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 670
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->regions:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 669
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 672
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 7
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "str"    # Ljava/lang/CharSequence;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 259
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->clear()V

    .line 260
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    const/4 v4, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v1, p2

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addText(Ljava/lang/CharSequence;FFII)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v6

    .line 261
    .local v6, "bounds":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 262
    return-object v6
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFII)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 7
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "str"    # Ljava/lang/CharSequence;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "start"    # I
    .param p6, "end"    # I

    .prologue
    .line 268
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->clear()V

    .line 269
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addText(Ljava/lang/CharSequence;FFII)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v6

    .line 270
    .local v6, "bounds":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 271
    return-object v6
.end method

.method public drawMultiLine(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 7
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "str"    # Ljava/lang/CharSequence;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 277
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->clear()V

    .line 278
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    const/4 v4, 0x0

    sget-object v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->LEFT:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    move-object v1, p2

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addMultiLineText(Ljava/lang/CharSequence;FFFLcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v6

    .line 279
    .local v6, "bounds":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 280
    return-object v6
.end method

.method public drawMultiLine(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFFLcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 7
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "str"    # Ljava/lang/CharSequence;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "alignmentWidth"    # F
    .param p6, "alignment"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->clear()V

    .line 287
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addMultiLineText(Ljava/lang/CharSequence;FFFLcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v6

    .line 288
    .local v6, "bounds":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 289
    return-object v6
.end method

.method public drawWrapped(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFF)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 7
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "str"    # Ljava/lang/CharSequence;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "wrapWidth"    # F

    .prologue
    .line 296
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->clear()V

    .line 297
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    sget-object v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->LEFT:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addWrappedText(Ljava/lang/CharSequence;FFFLcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v6

    .line 298
    .local v6, "bounds":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 299
    return-object v6
.end method

.method public drawWrapped(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFFLcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 7
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "str"    # Ljava/lang/CharSequence;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "wrapWidth"    # F
    .param p6, "alignment"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    .prologue
    .line 306
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->clear()V

    .line 307
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addWrappedText(Ljava/lang/CharSequence;FFFLcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v6

    .line 308
    .local v6, "bounds":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 309
    return-object v6
.end method

.method public getAscent()F
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    return v0
.end method

.method public getBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 3
    .param p1, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 315
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getBounds()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;IILcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    return-object v0
.end method

.method public getBounds(Ljava/lang/CharSequence;II)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 1
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 327
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getBounds()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;IILcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    return-object v0
.end method

.method public getBounds(Ljava/lang/CharSequence;IILcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 9
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "textBounds"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .prologue
    const/16 v8, 0x5d

    const/16 v7, 0x5b

    .line 335
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    .line 336
    .local v1, "data":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;
    const/4 v5, 0x0

    .line 337
    .local v5, "width":I
    const/4 v3, 0x0

    .local v3, "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    move v4, p2

    .line 338
    .end local p2    # "start":I
    .local v4, "start":I
    :goto_0
    if-ge v4, p3, :cond_4

    .line 339
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "start":I
    .restart local p2    # "start":I
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 340
    .local v0, "ch":C
    if-ne v0, v7, :cond_3

    iget-boolean v6, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->markupEnabled:Z

    if-eqz v6, :cond_3

    .line 341
    if-ge p2, p3, :cond_0

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-eq v6, v7, :cond_2

    .line 342
    :cond_0
    :goto_1
    if-ge p2, p3, :cond_1

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-eq v6, v8, :cond_1

    .line 343
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 344
    :cond_1
    add-int/lit8 p2, p2, 0x1

    move v4, p2

    .line 345
    .end local p2    # "start":I
    .restart local v4    # "start":I
    goto :goto_0

    .line 347
    .end local v4    # "start":I
    .restart local p2    # "start":I
    :cond_2
    add-int/lit8 p2, p2, 0x1

    .line 349
    :cond_3
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v3

    .line 350
    if-eqz v3, :cond_6

    .line 351
    iget v5, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    move v4, p2

    .line 355
    .end local v0    # "ch":C
    .end local p2    # "start":I
    .restart local v4    # "start":I
    :cond_4
    :goto_2
    if-ge v4, p3, :cond_b

    .line 356
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "start":I
    .restart local p2    # "start":I
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 357
    .restart local v0    # "ch":C
    if-ne v0, v7, :cond_9

    iget-boolean v6, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->markupEnabled:Z

    if-eqz v6, :cond_9

    .line 358
    if-ge p2, p3, :cond_5

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-eq v6, v7, :cond_8

    .line 359
    :cond_5
    :goto_3
    if-ge p2, p3, :cond_7

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-eq v6, v8, :cond_7

    .line 360
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_6
    move v4, p2

    .line 354
    .end local p2    # "start":I
    .restart local v4    # "start":I
    goto :goto_0

    .line 361
    .end local v4    # "start":I
    .restart local p2    # "start":I
    :cond_7
    add-int/lit8 p2, p2, 0x1

    move v4, p2

    .line 362
    .end local p2    # "start":I
    .restart local v4    # "start":I
    goto :goto_2

    .line 364
    .end local v4    # "start":I
    .restart local p2    # "start":I
    :cond_8
    add-int/lit8 p2, p2, 0x1

    .line 366
    :cond_9
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v2

    .line 367
    .local v2, "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-eqz v2, :cond_a

    .line 368
    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->getKerning(C)I

    move-result v6

    add-int/2addr v5, v6

    .line 369
    move-object v3, v2

    .line 370
    iget v6, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    add-int/2addr v5, v6

    :cond_a
    move v4, p2

    .line 372
    .end local p2    # "start":I
    .restart local v4    # "start":I
    goto :goto_2

    .line 373
    .end local v0    # "ch":C
    .end local v2    # "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :cond_b
    int-to-float v6, v5

    iget v7, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    mul-float/2addr v6, v7

    iput v6, p4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 374
    iget v6, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    iput v6, p4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    .line 375
    return-object p4
.end method

.method public getBounds(Ljava/lang/CharSequence;Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 2
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "textBounds"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .prologue
    .line 321
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;IILcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    return-object v0
.end method

.method public getCache()Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    return-object v0
.end method

.method public getCapHeight()F
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    return v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    return-object v0
.end method

.method public getDescent()F
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->descent:F

    return v0
.end method

.method public getLineHeight()F
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    return v0
.end method

.method public getMultiLineBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 1
    .param p1, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 381
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getBounds()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getMultiLineBounds(Ljava/lang/CharSequence;Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    return-object v0
.end method

.method public getMultiLineBounds(Ljava/lang/CharSequence;Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 9
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "textBounds"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .prologue
    .line 387
    const/4 v5, 0x0

    .line 388
    .local v5, "start":I
    const/4 v3, 0x0

    .line 389
    .local v3, "maxWidth":F
    const/4 v4, 0x0

    .line 390
    .local v4, "numLines":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 391
    .local v0, "length":I
    :goto_0
    if-ge v5, v0, :cond_0

    .line 392
    const/16 v6, 0xa

    invoke-static {p1, v6, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v1

    .line 393
    .local v1, "lineEnd":I
    invoke-virtual {p0, p1, v5, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;II)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v6

    iget v2, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 394
    .local v2, "lineWidth":F
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 395
    add-int/lit8 v5, v1, 0x1

    .line 396
    add-int/lit8 v4, v4, 0x1

    .line 397
    goto :goto_0

    .line 398
    .end local v1    # "lineEnd":I
    .end local v2    # "lineWidth":F
    :cond_0
    iput v3, p2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 399
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v6, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    add-int/lit8 v7, v4, -0x1

    int-to-float v7, v7

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v8, v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    .line 400
    return-object p2
.end method

.method public getRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 2

    .prologue
    .line 604
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->regions:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getRegion(I)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 616
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->regions:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getRegions()[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->regions:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    return v0
.end method

.method public getSpaceWidth()F
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->spaceWidth:F

    return v0
.end method

.method public getWrappedBounds(Ljava/lang/CharSequence;F)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 1
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "wrapWidth"    # F

    .prologue
    .line 406
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getBounds()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getWrappedBounds(Ljava/lang/CharSequence;FLcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    return-object v0
.end method

.method public getWrappedBounds(Ljava/lang/CharSequence;FLcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 12
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "wrapWidth"    # F
    .param p3, "textBounds"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .prologue
    const/16 v10, 0xa

    .line 414
    const/4 v9, 0x0

    cmpg-float v9, p2, v9

    if-gtz v9, :cond_0

    const/high16 p2, 0x4f000000

    .line 415
    :cond_0
    const/4 v8, 0x0

    .line 416
    .local v8, "start":I
    const/4 v7, 0x0

    .line 417
    .local v7, "numLines":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 418
    .local v1, "length":I
    const/4 v4, 0x0

    .line 419
    .local v4, "maxWidth":F
    :goto_0
    if-ge v8, v1, :cond_a

    .line 420
    invoke-static {p1, v10, v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v5

    .line 421
    .local v5, "newLine":I
    invoke-virtual {p0, p1, v8, v5, p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->computeVisibleGlyphs(Ljava/lang/CharSequence;IIF)I

    move-result v9

    add-int v2, v8, v9

    .line 422
    .local v2, "lineEnd":I
    add-int/lit8 v6, v2, 0x1

    .line 423
    .local v6, "nextStart":I
    if-ge v2, v5, :cond_3

    .line 425
    :goto_1
    if-le v2, v8, :cond_1

    .line 426
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 430
    :cond_1
    if-ne v2, v8, :cond_6

    .line 431
    add-int/lit8 v9, v8, 0x1

    if-le v6, v9, :cond_2

    add-int/lit8 v6, v6, -0x1

    .line 432
    :cond_2
    move v2, v6

    .line 449
    :cond_3
    if-le v2, v8, :cond_4

    .line 450
    invoke-virtual {p0, p1, v8, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;II)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v9

    iget v3, v9, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 451
    .local v3, "lineWidth":F
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 453
    .end local v3    # "lineWidth":F
    :cond_4
    move v8, v6

    .line 454
    add-int/lit8 v7, v7, 0x1

    .line 455
    goto :goto_0

    .line 427
    :cond_5
    add-int/lit8 v9, v2, -0x1

    invoke-interface {p1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-virtual {p0, v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->isBreakChar(C)Z

    move-result v9

    if-nez v9, :cond_1

    .line 428
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 434
    :cond_6
    move v6, v2

    .line 436
    :cond_7
    if-ge v6, v1, :cond_8

    .line 437
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 438
    .local v0, "c":C
    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->isWhitespace(C)Z

    move-result v9

    if-nez v9, :cond_9

    .line 443
    .end local v0    # "c":C
    :cond_8
    :goto_2
    if-le v2, v8, :cond_3

    .line 444
    add-int/lit8 v9, v2, -0x1

    invoke-interface {p1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 445
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 439
    .restart local v0    # "c":C
    :cond_9
    add-int/lit8 v6, v6, 0x1

    .line 440
    if-ne v0, v10, :cond_7

    goto :goto_2

    .line 456
    .end local v0    # "c":C
    .end local v2    # "lineEnd":I
    .end local v5    # "newLine":I
    .end local v6    # "nextStart":I
    :cond_a
    iput v4, p3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 457
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v9, v9, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    add-int/lit8 v10, v7, -0x1

    int-to-float v10, v10

    iget-object v11, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v11, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iput v9, p3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    .line 458
    return-object p3
.end method

.method public getXHeight()F
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xHeight:F

    return v0
.end method

.method public isBreakChar(C)Z
    .locals 6
    .param p1, "c"    # C

    .prologue
    const/4 v4, 0x0

    .line 783
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->breakChars:[C

    if-nez v5, :cond_1

    .line 786
    :cond_0
    :goto_0
    return v4

    .line 784
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->breakChars:[C

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-char v1, v0, v2

    .line 785
    .local v1, "br":C
    if-ne p1, v1, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    .line 784
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public isFlipped()Z
    .locals 1

    .prologue
    .line 653
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->flipped:Z

    return v0
.end method

.method public isMarkupEnabled()Z
    .locals 1

    .prologue
    .line 658
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->markupEnabled:Z

    return v0
.end method

.method public ownsTexture()Z
    .locals 1

    .prologue
    .line 722
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->ownsTexture:Z

    return v0
.end method

.method public scale(F)V
    .locals 2
    .param p1, "amount"    # F

    .prologue
    .line 588
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    add-float/2addr v0, p1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    add-float/2addr v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setScale(FF)V

    .line 589
    return-void
.end method

.method public setBreakChars([C)V
    .locals 0
    .param p1, "breakChars"    # [C

    .prologue
    .line 779
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->breakChars:[C

    .line 780
    return-void
.end method

.method public setColor(F)V
    .locals 1
    .param p1, "color"    # F

    .prologue
    .line 538
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setColor(F)V

    .line 539
    return-void
.end method

.method public setColor(FFFF)V
    .locals 1
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    .line 546
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setColor(FFFF)V

    .line 547
    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 542
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 543
    return-void
.end method

.method public setFixedWidthGlyphs(Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "glyphs"    # Ljava/lang/CharSequence;

    .prologue
    .line 677
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    .line 678
    .local v0, "data":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;
    const/4 v4, 0x0

    .line 679
    .local v4, "maxAdvance":I
    const/4 v3, 0x0

    .local v3, "index":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, "end":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 680
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v2

    .line 681
    .local v2, "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-eqz v2, :cond_0

    iget v5, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    if-le v5, v4, :cond_0

    iget v4, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    .line 679
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 683
    .end local v2    # "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :cond_1
    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    :goto_1
    if-ge v3, v1, :cond_3

    .line 684
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v2

    .line 685
    .restart local v2    # "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-nez v2, :cond_2

    .line 683
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 686
    :cond_2
    iget v5, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    iget v6, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    sub-int v6, v4, v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iput v5, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    .line 687
    iput v4, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    .line 688
    const/4 v5, 0x0

    check-cast v5, [[B

    iput-object v5, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->kerning:[[B

    goto :goto_2

    .line 690
    .end local v2    # "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :cond_3
    return-void
.end method

.method public setMarkupEnabled(Z)V
    .locals 0
    .param p1, "markupEnabled"    # Z

    .prologue
    .line 663
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->markupEnabled:Z

    .line 664
    return-void
.end method

.method public setOwnsTexture(Z)V
    .locals 0
    .param p1, "ownsTexture"    # Z

    .prologue
    .line 729
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->ownsTexture:Z

    .line 730
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "scaleXY"    # F

    .prologue
    .line 581
    invoke-virtual {p0, p1, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setScale(FF)V

    .line 582
    return-void
.end method

.method public setScale(FF)V
    .locals 5
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .prologue
    const/4 v4, 0x0

    .line 561
    cmpl-float v3, p1, v4

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "scaleX cannot be 0."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 562
    :cond_0
    cmpl-float v3, p2, v4

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "scaleY cannot be 0."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 563
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    .line 564
    .local v0, "data":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;
    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    div-float v1, p1, v3

    .line 565
    .local v1, "x":F
    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    div-float v2, p2, v3

    .line 566
    .local v2, "y":F
    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    mul-float/2addr v3, v2

    iput v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    .line 567
    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->spaceWidth:F

    mul-float/2addr v3, v1

    iput v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->spaceWidth:F

    .line 568
    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xHeight:F

    mul-float/2addr v3, v2

    iput v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xHeight:F

    .line 569
    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    mul-float/2addr v3, v2

    iput v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    .line 570
    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    mul-float/2addr v3, v2

    iput v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    .line 571
    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->descent:F

    mul-float/2addr v3, v2

    iput v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->descent:F

    .line 572
    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    mul-float/2addr v3, v2

    iput v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    .line 573
    iput p1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    .line 574
    iput p2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    .line 575
    return-void
.end method

.method public setUseIntegerPositions(Z)V
    .locals 1
    .param p1, "integer"    # Z

    .prologue
    .line 699
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->integer:Z

    .line 700
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setUseIntegerPositions(Z)V

    .line 701
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->fontFile:Lcom/badlogic/gdx/files/FileHandle;

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->fontFile:Lcom/badlogic/gdx/files/FileHandle;

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->nameWithoutExtension()Ljava/lang/String;

    move-result-object v0

    .line 736
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public usesIntegerPositions()Z
    .locals 1

    .prologue
    .line 705
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->integer:Z

    return v0
.end method
