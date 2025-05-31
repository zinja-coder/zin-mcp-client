.class public Lcom/badlogic/gdx/graphics/TextureData$Factory;
.super Ljava/lang/Object;
.source "TextureData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/TextureData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)Lcom/badlogic/gdx/graphics/TextureData;
    .locals 2
    .param p0, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p1, "format"    # Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .param p2, "useMipMaps"    # Z

    .prologue
    .line 94
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 98
    :goto_0
    return-object v0

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".cim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;

    invoke-static {p0}, Lcom/badlogic/gdx/graphics/PixmapIO;->readCIM(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".etc1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;

    invoke-direct {v0, p0, p2}, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".ktx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".zktx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;

    invoke-direct {v0, p0, p2}, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    goto :goto_0

    .line 98
    :cond_4
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;

    new-instance v1, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    goto :goto_0
.end method

.method public static loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/TextureData;
    .locals 1
    .param p0, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p1, "useMipMaps"    # Z

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v0

    return-object v0
.end method
