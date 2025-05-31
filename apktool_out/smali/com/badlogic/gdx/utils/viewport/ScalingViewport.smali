.class public Lcom/badlogic/gdx/utils/viewport/ScalingViewport;
.super Lcom/badlogic/gdx/utils/viewport/Viewport;
.source "ScalingViewport.java"


# instance fields
.field private scaling:Lcom/badlogic/gdx/utils/Scaling;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/Scaling;FF)V
    .locals 1
    .param p1, "scaling"    # Lcom/badlogic/gdx/utils/Scaling;
    .param p2, "worldWidth"    # F
    .param p3, "worldHeight"    # F

    .prologue
    .line 44
    new-instance v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/OrthographicCamera;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/utils/viewport/ScalingViewport;-><init>(Lcom/badlogic/gdx/utils/Scaling;FFLcom/badlogic/gdx/graphics/Camera;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/Scaling;FFLcom/badlogic/gdx/graphics/Camera;)V
    .locals 0
    .param p1, "scaling"    # Lcom/badlogic/gdx/utils/Scaling;
    .param p2, "worldWidth"    # F
    .param p3, "worldHeight"    # F
    .param p4, "camera"    # Lcom/badlogic/gdx/graphics/Camera;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/viewport/Viewport;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/badlogic/gdx/utils/viewport/ScalingViewport;->scaling:Lcom/badlogic/gdx/utils/Scaling;

    .line 49
    invoke-virtual {p0, p2, p3}, Lcom/badlogic/gdx/utils/viewport/ScalingViewport;->setWorldSize(FF)V

    .line 50
    invoke-virtual {p0, p4}, Lcom/badlogic/gdx/utils/viewport/ScalingViewport;->setCamera(Lcom/badlogic/gdx/graphics/Camera;)V

    .line 51
    return-void
.end method


# virtual methods
.method public getScaling()Lcom/badlogic/gdx/utils/Scaling;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/ScalingViewport;->scaling:Lcom/badlogic/gdx/utils/Scaling;

    return-object v0
.end method

.method public setScaling(Lcom/badlogic/gdx/utils/Scaling;)V
    .locals 0
    .param p1, "scaling"    # Lcom/badlogic/gdx/utils/Scaling;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/badlogic/gdx/utils/viewport/ScalingViewport;->scaling:Lcom/badlogic/gdx/utils/Scaling;

    .line 71
    return-void
.end method

.method public update(IIZ)V
    .locals 8
    .param p1, "screenWidth"    # I
    .param p2, "screenHeight"    # I
    .param p3, "centerCamera"    # Z

    .prologue
    .line 55
    iget-object v3, p0, Lcom/badlogic/gdx/utils/viewport/ScalingViewport;->scaling:Lcom/badlogic/gdx/utils/Scaling;

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/viewport/ScalingViewport;->getWorldWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/viewport/ScalingViewport;->getWorldHeight()F

    move-result v5

    int-to-float v6, p1

    int-to-float v7, p2

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/utils/Scaling;->apply(FFFF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 56
    .local v0, "scaled":Lcom/badlogic/gdx/math/Vector2;
    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 57
    .local v2, "viewportWidth":I
    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 60
    .local v1, "viewportHeight":I
    sub-int v3, p1, v2

    div-int/lit8 v3, v3, 0x2

    sub-int v4, p2, v1

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4, v2, v1}, Lcom/badlogic/gdx/utils/viewport/ScalingViewport;->setScreenBounds(IIII)V

    .line 62
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/utils/viewport/ScalingViewport;->apply(Z)V

    .line 63
    return-void
.end method
