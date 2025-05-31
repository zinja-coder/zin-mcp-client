.class public Lcom/badlogic/gdx/graphics/glutils/FloatFrameBuffer;
.super Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;
.source "FloatFrameBuffer.java"


# direct methods
.method public constructor <init>(IIZ)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "hasDepth"    # Z

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;-><init>(Lcom/badlogic/gdx/graphics/Pixmap$Format;IIZ)V

    .line 38
    return-void
.end method


# virtual methods
.method protected setupTexture()V
    .locals 4

    .prologue
    .line 42
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/FloatFrameBuffer;->width:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/FloatFrameBuffer;->height:I

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;-><init>(II)V

    .line 43
    .local v0, "data":Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;
    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/TextureData;)V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FloatFrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    .line 44
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v1}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v1}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/Application$ApplicationType;->Applet:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v1, v2, :cond_1

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FloatFrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 49
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FloatFrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/Texture;->setWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    .line 50
    return-void

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FloatFrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    goto :goto_0
.end method
