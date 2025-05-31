.class public Lcom/badlogic/gdx/graphics/PerspectiveCamera;
.super Lcom/badlogic/gdx/graphics/Camera;
.source "PerspectiveCamera.java"


# instance fields
.field public fieldOfView:F

.field final tmp:Lcom/badlogic/gdx/math/Vector3;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/Camera;-><init>()V

    .line 27
    const/high16 v0, 0x42860000    # 67.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->fieldOfView:F

    .line 46
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->tmp:Lcom/badlogic/gdx/math/Vector3;

    .line 30
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 1
    .param p1, "fieldOfViewY"    # F
    .param p2, "viewportWidth"    # F
    .param p3, "viewportHeight"    # F

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/Camera;-><init>()V

    .line 27
    const/high16 v0, 0x42860000    # 67.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->fieldOfView:F

    .line 46
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->tmp:Lcom/badlogic/gdx/math/Vector3;

    .line 40
    iput p1, p0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->fieldOfView:F

    .line 41
    iput p2, p0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->viewportWidth:F

    .line 42
    iput p3, p0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->viewportHeight:F

    .line 43
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->update()V

    .line 44
    return-void
.end method


# virtual methods
.method public update()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->update(Z)V

    .line 51
    return-void
.end method

.method public update(Z)V
    .locals 5
    .param p1, "updateFrustum"    # Z

    .prologue
    .line 55
    iget v1, p0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->viewportWidth:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->viewportHeight:F

    div-float v0, v1, v2

    .line 56
    .local v0, "aspect":F
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->projection:Lcom/badlogic/gdx/math/Matrix4;

    iget v2, p0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->near:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->far:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->fieldOfView:F

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/badlogic/gdx/math/Matrix4;->setToProjection(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 57
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->view:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->up:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Matrix4;->setToLookAt(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    .line 58
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->projection:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 59
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, v1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->view:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v2, v2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-static {v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->mul([F[F)V

    .line 61
    if-eqz p1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->invProjectionView:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 63
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->invProjectionView:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, v1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-static {v1}, Lcom/badlogic/gdx/math/Matrix4;->inv([F)Z

    .line 64
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->frustum:Lcom/badlogic/gdx/math/Frustum;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->invProjectionView:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Frustum;->update(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 66
    :cond_0
    return-void
.end method
