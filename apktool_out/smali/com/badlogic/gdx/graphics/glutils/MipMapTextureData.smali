.class public Lcom/badlogic/gdx/graphics/glutils/MipMapTextureData;
.super Ljava/lang/Object;
.source "MipMapTextureData.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/TextureData;


# instance fields
.field mips:[Lcom/badlogic/gdx/graphics/TextureData;


# direct methods
.method public varargs constructor <init>([Lcom/badlogic/gdx/graphics/TextureData;)V
    .locals 3
    .param p1, "mipMapData"    # [Lcom/badlogic/gdx/graphics/TextureData;

    .prologue
    const/4 v2, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    array-length v0, p1

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/TextureData;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/MipMapTextureData;->mips:[Lcom/badlogic/gdx/graphics/TextureData;

    .line 17
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/MipMapTextureData;->mips:[Lcom/badlogic/gdx/graphics/TextureData;

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    return-void
.end method


# virtual methods
.method public consumeCustomData(I)V
    .locals 2
    .param p1, "target"    # I

    .prologue
    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/MipMapTextureData;->mips:[Lcom/badlogic/gdx/graphics/TextureData;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/MipMapTextureData;->mips:[Lcom/badlogic/gdx/graphics/TextureData;

    aget-object v1, v1, v0

    invoke-static {p1, v1, v0}, Lcom/badlogic/gdx/graphics/GLTexture;->uploadImageData(ILcom/badlogic/gdx/graphics/TextureData;I)V

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method

.method public consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "It\'s compressed, use the compressed method"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disposePixmap()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/MipMapTextureData;->mips:[Lcom/badlogic/gdx/graphics/TextureData;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/MipMapTextureData;->mips:[Lcom/badlogic/gdx/graphics/TextureData;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->getHeight()I

    move-result v0

    return v0
.end method

.method public getType()Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->Custom:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    return-object v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/MipMapTextureData;->mips:[Lcom/badlogic/gdx/graphics/TextureData;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->getWidth()I

    move-result v0

    return v0
.end method

.method public isManaged()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public isPrepared()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method public prepare()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method public useMipMaps()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method
