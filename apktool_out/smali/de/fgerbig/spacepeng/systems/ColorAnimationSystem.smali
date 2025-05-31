.class public Lde/fgerbig/spacepeng/systems/ColorAnimationSystem;
.super Lcom/artemis/systems/EntityProcessingSystem;
.source "ColorAnimationSystem.java"


# instance fields
.field cam:Lcom/artemis/ComponentMapper;
    .annotation runtime Lcom/artemis/annotations/Wire;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/ComponentMapper",
            "<",
            "Lde/fgerbig/spacepeng/components/ColorAnimation;",
            ">;"
        }
    .end annotation
.end field

.field sm:Lcom/artemis/ComponentMapper;
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


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lde/fgerbig/spacepeng/components/ColorAnimation;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lde/fgerbig/spacepeng/components/Sprite;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/artemis/Aspect;->getAspectForAll([Ljava/lang/Class;)Lcom/artemis/Aspect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/artemis/systems/EntityProcessingSystem;-><init>(Lcom/artemis/Aspect;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected process(Lcom/artemis/Entity;)V
    .locals 5
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 40
    iget-object v2, p0, Lde/fgerbig/spacepeng/systems/ColorAnimationSystem;->cam:Lcom/artemis/ComponentMapper;

    invoke-virtual {v2, p1}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v0

    check-cast v0, Lde/fgerbig/spacepeng/components/ColorAnimation;

    .line 41
    .local v0, "c":Lde/fgerbig/spacepeng/components/ColorAnimation;
    iget-object v2, p0, Lde/fgerbig/spacepeng/systems/ColorAnimationSystem;->sm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v2, p1}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v1

    check-cast v1, Lde/fgerbig/spacepeng/components/Sprite;

    .line 43
    .local v1, "sprite":Lde/fgerbig/spacepeng/components/Sprite;
    iget-boolean v2, v0, Lde/fgerbig/spacepeng/components/ColorAnimation;->alphaAnimate:Z

    if-eqz v2, :cond_1

    .line 44
    iget v2, v1, Lde/fgerbig/spacepeng/components/Sprite;->a:F

    iget v3, v0, Lde/fgerbig/spacepeng/components/ColorAnimation;->alphaSpeed:F

    iget-object v4, p0, Lde/fgerbig/spacepeng/systems/ColorAnimationSystem;->world:Lcom/artemis/World;

    iget v4, v4, Lcom/artemis/World;->delta:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lde/fgerbig/spacepeng/components/Sprite;->a:F

    .line 46
    iget v2, v1, Lde/fgerbig/spacepeng/components/Sprite;->a:F

    iget v3, v0, Lde/fgerbig/spacepeng/components/ColorAnimation;->alphaMax:F

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    iget v2, v1, Lde/fgerbig/spacepeng/components/Sprite;->a:F

    iget v3, v0, Lde/fgerbig/spacepeng/components/ColorAnimation;->alphaMin:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 47
    :cond_0
    iget-boolean v2, v0, Lde/fgerbig/spacepeng/components/ColorAnimation;->repeat:Z

    if-eqz v2, :cond_2

    .line 48
    iget v2, v0, Lde/fgerbig/spacepeng/components/ColorAnimation;->alphaSpeed:F

    neg-float v2, v2

    iput v2, v0, Lde/fgerbig/spacepeng/components/ColorAnimation;->alphaSpeed:F

    .line 54
    :cond_1
    :goto_0
    return-void

    .line 50
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, v0, Lde/fgerbig/spacepeng/components/ColorAnimation;->alphaAnimate:Z

    goto :goto_0
.end method
