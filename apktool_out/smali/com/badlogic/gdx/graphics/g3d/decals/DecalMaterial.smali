.class public Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;
.super Ljava/lang/Object;
.source "DecalMaterial.java"


# static fields
.field public static final NO_BLEND:I = -0x1


# instance fields
.field protected dstBlendFactor:I

.field protected srcBlendFactor:I

.field protected textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 52
    if-nez p1, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 54
    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    .line 56
    .local v0, "material":Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->dstBlendFactor:I

    iget v3, v0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->dstBlendFactor:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->srcBlendFactor:I

    iget v3, v0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->srcBlendFactor:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getDstBlendFactor()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->dstBlendFactor:I

    return v0
.end method

.method public getSrcBlendFactor()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->srcBlendFactor:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 63
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 64
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->srcBlendFactor:I

    add-int v0, v1, v2

    .line 65
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->dstBlendFactor:I

    add-int v0, v1, v2

    .line 66
    return v0

    .line 63
    .end local v0    # "result":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpaque()Z
    .locals 2

    .prologue
    .line 39
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->srcBlendFactor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set()V
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->bind()V

    .line 32
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->isOpaque()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->srcBlendFactor:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->dstBlendFactor:I

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    .line 35
    :cond_0
    return-void
.end method
