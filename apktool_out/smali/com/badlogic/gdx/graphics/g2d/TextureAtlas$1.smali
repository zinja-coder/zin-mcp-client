.class final Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$1;
.super Ljava/lang/Object;
.source "TextureAtlas.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;)I
    .locals 3
    .param p1, "region1"    # Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;
    .param p2, "region2"    # Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;

    .prologue
    const/4 v2, -0x1

    .line 424
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->index:I

    .line 425
    .local v0, "i1":I
    if-ne v0, v2, :cond_0

    const v0, 0x7fffffff

    .line 426
    :cond_0
    iget v1, p2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->index:I

    .line 427
    .local v1, "i2":I
    if-ne v1, v2, :cond_1

    const v1, 0x7fffffff

    .line 428
    :cond_1
    sub-int v2, v0, v1

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 422
    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$1;->compare(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;)I

    move-result v0

    return v0
.end method
