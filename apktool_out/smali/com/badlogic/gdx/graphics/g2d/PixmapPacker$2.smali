.class Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$2;
.super Lcom/badlogic/gdx/graphics/Texture;
.source "PixmapPacker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->updateTextureAtlas(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;Lcom/badlogic/gdx/graphics/TextureData;)V
    .locals 0
    .param p2, "x0"    # Lcom/badlogic/gdx/graphics/TextureData;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$2;->this$0:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/TextureData;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 362
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 363
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$2;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 364
    return-void
.end method
