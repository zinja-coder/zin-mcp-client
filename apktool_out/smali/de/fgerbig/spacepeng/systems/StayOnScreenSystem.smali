.class public Lde/fgerbig/spacepeng/systems/StayOnScreenSystem;
.super Lcom/artemis/systems/EntityProcessingSystem;
.source "StayOnScreenSystem.java"


# instance fields
.field pos_cm:Lcom/artemis/ComponentMapper;
    .annotation runtime Lcom/artemis/annotations/Wire;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/ComponentMapper",
            "<",
            "Lde/fgerbig/spacepeng/components/Position;",
            ">;"
        }
    .end annotation
.end field

.field spr_cm:Lcom/artemis/ComponentMapper;
    .annotation runtime Lcom/artemis/annotations/Wire;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/ComponentMapper",
            "<",
            "Lde/fgerbig/spacepeng/components/Sprite;",
            ">;"
        }
    .end annotation
.end field

.field private textureAtlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

.field vlc_cm:Lcom/artemis/ComponentMapper;
    .annotation runtime Lcom/artemis/annotations/Wire;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/ComponentMapper",
            "<",
            "Lde/fgerbig/spacepeng/components/Velocity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V
    .locals 3
    .param p1, "atlas"    # Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    .prologue
    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lde/fgerbig/spacepeng/components/StayOnScreen;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lde/fgerbig/spacepeng/components/Position;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/artemis/Aspect;->getAspectForAll([Ljava/lang/Class;)Lcom/artemis/Aspect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/artemis/systems/EntityProcessingSystem;-><init>(Lcom/artemis/Aspect;)V

    .line 45
    iput-object p1, p0, Lde/fgerbig/spacepeng/systems/StayOnScreenSystem;->textureAtlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    .line 46
    return-void
.end method


# virtual methods
.method protected process(Lcom/artemis/Entity;)V
    .locals 14
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    const/4 v13, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    .line 50
    iget-object v8, p0, Lde/fgerbig/spacepeng/systems/StayOnScreenSystem;->pos_cm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v8, p1}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v2

    check-cast v2, Lde/fgerbig/spacepeng/components/Position;

    .line 52
    .local v2, "position":Lde/fgerbig/spacepeng/components/Position;
    const/4 v5, 0x0

    .local v5, "sx":F
    const/4 v6, 0x0

    .line 54
    .local v6, "sy":F
    iget-object v8, p0, Lde/fgerbig/spacepeng/systems/StayOnScreenSystem;->spr_cm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v8, p1}, Lcom/artemis/ComponentMapper;->has(Lcom/artemis/Entity;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 55
    iget-object v8, p0, Lde/fgerbig/spacepeng/systems/StayOnScreenSystem;->spr_cm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v8, p1}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v4

    check-cast v4, Lde/fgerbig/spacepeng/components/Sprite;

    .line 56
    .local v4, "sprite":Lde/fgerbig/spacepeng/components/Sprite;
    iget-object v8, p0, Lde/fgerbig/spacepeng/systems/StayOnScreenSystem;->textureAtlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    iget-object v9, v4, Lde/fgerbig/spacepeng/components/Sprite;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v3

    .line 57
    .local v3, "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->getRegionWidth()I

    move-result v8

    int-to-float v5, v8

    .line 58
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->getRegionHeight()I

    move-result v8

    int-to-float v6, v8

    .line 61
    .end local v3    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    .end local v4    # "sprite":Lde/fgerbig/spacepeng/components/Sprite;
    :cond_0
    iget v0, v2, Lde/fgerbig/spacepeng/components/Position;->x:F

    .line 62
    .local v0, "oldPosX":F
    iget v1, v2, Lde/fgerbig/spacepeng/components/Position;->y:F

    .line 64
    .local v1, "oldPosY":F
    iget v8, v2, Lde/fgerbig/spacepeng/components/Position;->x:F

    div-float v9, v5, v12

    const/high16 v10, 0x44480000    # 800.0f

    div-float v11, v5, v12

    sub-float/2addr v10, v11

    invoke-static {v8, v9, v10}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v8

    iput v8, v2, Lde/fgerbig/spacepeng/components/Position;->x:F

    .line 65
    iget v8, v2, Lde/fgerbig/spacepeng/components/Position;->y:F

    div-float v9, v6, v12

    const/high16 v10, 0x43f00000    # 480.0f

    div-float v11, v6, v12

    sub-float/2addr v10, v11

    invoke-static {v8, v9, v10}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v8

    iput v8, v2, Lde/fgerbig/spacepeng/components/Position;->y:F

    .line 68
    iget-object v8, p0, Lde/fgerbig/spacepeng/systems/StayOnScreenSystem;->vlc_cm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v8, p1}, Lcom/artemis/ComponentMapper;->has(Lcom/artemis/Entity;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 69
    iget-object v8, p0, Lde/fgerbig/spacepeng/systems/StayOnScreenSystem;->vlc_cm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v8, p1}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v7

    check-cast v7, Lde/fgerbig/spacepeng/components/Velocity;

    .line 71
    .local v7, "velocity":Lde/fgerbig/spacepeng/components/Velocity;
    iget v8, v2, Lde/fgerbig/spacepeng/components/Position;->x:F

    cmpl-float v8, v0, v8

    if-eqz v8, :cond_1

    .line 72
    iput v13, v7, Lde/fgerbig/spacepeng/components/Velocity;->vectorX:F

    .line 75
    :cond_1
    iget v8, v2, Lde/fgerbig/spacepeng/components/Position;->y:F

    cmpl-float v8, v1, v8

    if-eqz v8, :cond_2

    .line 76
    iput v13, v7, Lde/fgerbig/spacepeng/components/Velocity;->vectorY:F

    .line 79
    .end local v7    # "velocity":Lde/fgerbig/spacepeng/components/Velocity;
    :cond_2
    return-void
.end method
