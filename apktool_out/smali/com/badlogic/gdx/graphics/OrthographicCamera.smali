.class public Lcom/badlogic/gdx/graphics/OrthographicCamera;
.super Lcom/badlogic/gdx/graphics/Camera;
.source "OrthographicCamera.java"


# instance fields
.field private final tmp:Lcom/badlogic/gdx/math/Vector3;

.field public zoom:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/Camera;-><init>()V

    .line 29
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    .line 47
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->tmp:Lcom/badlogic/gdx/math/Vector3;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->near:F

    .line 33
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1
    .param p1, "viewportWidth"    # F
    .param p2, "viewportHeight"    # F

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/Camera;-><init>()V

    .line 29
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    .line 47
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->tmp:Lcom/badlogic/gdx/math/Vector3;

    .line 41
    iput p1, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportWidth:F

    .line 42
    iput p2, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportHeight:F

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->near:F

    .line 44
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->update()V

    .line 45
    return-void
.end method


# virtual methods
.method public rotate(F)V
    .locals 1
    .param p1, "angle"    # F

    .prologue
    .line 98
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->rotate(Lcom/badlogic/gdx/math/Vector3;F)V

    .line 99
    return-void
.end method

.method public setToOrtho(Z)V
    .locals 2
    .param p1, "yDown"    # Z

    .prologue
    .line 73
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    .line 74
    return-void
.end method

.method public setToOrtho(ZFF)V
    .locals 5
    .param p1, "yDown"    # Z
    .param p2, "viewportWidth"    # F
    .param p3, "viewportHeight"    # F

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v3, 0x0

    .line 82
    if-eqz p1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->up:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v3, v1, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 84
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v3, v3, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 89
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    mul-float/2addr v1, p2

    div-float/2addr v1, v4

    iget v2, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    mul-float/2addr v2, p3

    div-float/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 90
    iput p2, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportWidth:F

    .line 91
    iput p3, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportHeight:F

    .line 92
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->update()V

    .line 93
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->up:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v3, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 87
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v3, v3, v1}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    goto :goto_0
.end method

.method public translate(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->translate(FFF)V

    .line 106
    return-void
.end method

.method public translate(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 3
    .param p1, "vec"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 111
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->translate(FFF)V

    .line 112
    return-void
.end method

.method public update()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->update(Z)V

    .line 52
    return-void
.end method

.method public update(Z)V
    .locals 7
    .param p1, "updateFrustum"    # Z

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 56
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->projection:Lcom/badlogic/gdx/math/Matrix4;

    iget v1, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportWidth:F

    neg-float v2, v2

    mul-float/2addr v1, v2

    div-float/2addr v1, v6

    iget v2, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportWidth:F

    div-float/2addr v3, v6

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    iget v4, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportHeight:F

    div-float/2addr v4, v6

    neg-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    iget v5, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportHeight:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v6

    iget v5, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->near:F

    iget v6, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->far:F

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/math/Matrix4;->setToOrtho(FFFFFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 58
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->view:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->up:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->setToLookAt(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    .line 59
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->projection:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 60
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->view:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, v1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->mul([F[F)V

    .line 62
    if-eqz p1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->invProjectionView:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 64
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->invProjectionView:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-static {v0}, Lcom/badlogic/gdx/math/Matrix4;->inv([F)Z

    .line 65
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->frustum:Lcom/badlogic/gdx/math/Frustum;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->invProjectionView:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Frustum;->update(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 67
    :cond_0
    return-void
.end method
