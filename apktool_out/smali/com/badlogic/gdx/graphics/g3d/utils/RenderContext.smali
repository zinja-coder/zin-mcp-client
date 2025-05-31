.class public Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;
.super Ljava/lang/Object;
.source "RenderContext.java"


# instance fields
.field private blendDFactor:I

.field private blendSFactor:I

.field private blending:Z

.field private cullFace:I

.field private depthFunc:I

.field private depthMask:Z

.field private depthRangeFar:F

.field private depthRangeNear:F

.field public final textureBinder:Lcom/badlogic/gdx/graphics/g3d/utils/TextureBinder;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/utils/TextureBinder;)V
    .locals 0
    .param p1, "textures"    # Lcom/badlogic/gdx/graphics/g3d/utils/TextureBinder;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->textureBinder:Lcom/badlogic/gdx/graphics/g3d/utils/TextureBinder;

    .line 40
    return-void
.end method


# virtual methods
.method public begin()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0xb71

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 46
    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->depthFunc:I

    .line 47
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, v3}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 48
    iput-boolean v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->depthMask:Z

    .line 49
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 50
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->blending:Z

    .line 51
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0xb44

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 52
    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->blendDFactor:I

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->blendSFactor:I

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->cullFace:I

    .line 53
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->textureBinder:Lcom/badlogic/gdx/graphics/g3d/utils/TextureBinder;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureBinder;->begin()V

    .line 54
    return-void
.end method

.method public end()V
    .locals 2

    .prologue
    .line 58
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->depthFunc:I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0xb71

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 59
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->depthMask:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 60
    :cond_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->blending:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 61
    :cond_2
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->cullFace:I

    if-lez v0, :cond_3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0xb44

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 62
    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->textureBinder:Lcom/badlogic/gdx/graphics/g3d/utils/TextureBinder;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureBinder;->end()V

    .line 63
    return-void
.end method

.method public setBlending(ZII)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "sFactor"    # I
    .param p3, "dFactor"    # I

    .prologue
    const/16 v1, 0xbe2

    .line 92
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->blending:Z

    if-eq p1, v0, :cond_0

    .line 93
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->blending:Z

    .line 94
    if-eqz p1, :cond_3

    .line 95
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 99
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->blendSFactor:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->blendDFactor:I

    if-eq v0, p3, :cond_2

    .line 100
    :cond_1
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    .line 101
    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->blendSFactor:I

    .line 102
    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->blendDFactor:I

    .line 104
    :cond_2
    return-void

    .line 97
    :cond_3
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    goto :goto_0
.end method

.method public setCullFace(I)V
    .locals 2
    .param p1, "face"    # I

    .prologue
    const/16 v1, 0xb44

    .line 107
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->cullFace:I

    if-eq p1, v0, :cond_1

    .line 108
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->cullFace:I

    .line 109
    const/16 v0, 0x404

    if-eq p1, v0, :cond_0

    const/16 v0, 0x405

    if-eq p1, v0, :cond_0

    const/16 v0, 0x408

    if-ne p1, v0, :cond_2

    .line 110
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 111
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glCullFace(I)V

    .line 115
    :cond_1
    :goto_0
    return-void

    .line 113
    :cond_2
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    goto :goto_0
.end method

.method public setDepthMask(Z)V
    .locals 1
    .param p1, "depthMask"    # Z

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->depthMask:Z

    if-eq v0, p1, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->depthMask:Z

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 67
    :cond_0
    return-void
.end method

.method public setDepthTest(I)V
    .locals 2
    .param p1, "depthFunction"    # I

    .prologue
    .line 70
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->setDepthTest(IFF)V

    .line 71
    return-void
.end method

.method public setDepthTest(IFF)V
    .locals 5
    .param p1, "depthFunction"    # I
    .param p2, "depthRangeNear"    # F
    .param p3, "depthRangeFar"    # F

    .prologue
    const/16 v4, 0xb71

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 74
    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->depthFunc:I

    if-eqz v3, :cond_5

    move v1, v0

    .line 75
    .local v1, "wasEnabled":Z
    :goto_0
    if-eqz p1, :cond_6

    .line 76
    .local v0, "enabled":Z
    :goto_1
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->depthFunc:I

    if-eq v2, p1, :cond_0

    .line 77
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->depthFunc:I

    .line 78
    if-eqz v0, :cond_7

    .line 79
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v4}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 80
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthFunc(I)V

    .line 84
    :cond_0
    :goto_2
    if-eqz v0, :cond_4

    .line 85
    if-eqz v1, :cond_1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->depthFunc:I

    if-eq v2, p1, :cond_2

    :cond_1
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->depthFunc:I

    invoke-interface {v2, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthFunc(I)V

    .line 86
    :cond_2
    if-eqz v1, :cond_3

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->depthRangeNear:F

    cmpl-float v2, v2, p2

    if-nez v2, :cond_3

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->depthRangeFar:F

    cmpl-float v2, v2, p3

    if-eqz v2, :cond_4

    .line 87
    :cond_3
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->depthRangeNear:F

    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->depthRangeFar:F

    invoke-interface {v2, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glDepthRangef(FF)V

    .line 89
    :cond_4
    return-void

    .end local v0    # "enabled":Z
    .end local v1    # "wasEnabled":Z
    :cond_5
    move v1, v2

    .line 74
    goto :goto_0

    .restart local v1    # "wasEnabled":Z
    :cond_6
    move v0, v2

    .line 75
    goto :goto_1

    .line 82
    .restart local v0    # "enabled":Z
    :cond_7
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v4}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    goto :goto_2
.end method
