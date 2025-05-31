.class public Lde/fgerbig/spacepeng/systems/ScaleAnimationSystem;
.super Lcom/artemis/systems/EntityProcessingSystem;
.source "ScaleAnimationSystem.java"


# instance fields
.field sa:Lcom/artemis/ComponentMapper;
    .annotation runtime Lcom/artemis/annotations/Wire;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/ComponentMapper",
            "<",
            "Lde/fgerbig/spacepeng/components/ScaleAnimation;",
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
    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lde/fgerbig/spacepeng/components/ScaleAnimation;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/artemis/Aspect;->getAspectForAll([Ljava/lang/Class;)Lcom/artemis/Aspect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/artemis/systems/EntityProcessingSystem;-><init>(Lcom/artemis/Aspect;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected process(Lcom/artemis/Entity;)V
    .locals 6
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    const/4 v5, 0x0

    .line 41
    iget-object v2, p0, Lde/fgerbig/spacepeng/systems/ScaleAnimationSystem;->sa:Lcom/artemis/ComponentMapper;

    invoke-virtual {v2, p1}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v0

    check-cast v0, Lde/fgerbig/spacepeng/components/ScaleAnimation;

    .line 42
    .local v0, "scaleAnimation":Lde/fgerbig/spacepeng/components/ScaleAnimation;
    iget-boolean v2, v0, Lde/fgerbig/spacepeng/components/ScaleAnimation;->active:Z

    if-eqz v2, :cond_0

    .line 43
    iget-object v2, p0, Lde/fgerbig/spacepeng/systems/ScaleAnimationSystem;->sm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v2, p1}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v1

    check-cast v1, Lde/fgerbig/spacepeng/components/Sprite;

    .line 45
    .local v1, "sprite":Lde/fgerbig/spacepeng/components/Sprite;
    iget v2, v1, Lde/fgerbig/spacepeng/components/Sprite;->scaleX:F

    iget v3, v0, Lde/fgerbig/spacepeng/components/ScaleAnimation;->speed:F

    iget-object v4, p0, Lde/fgerbig/spacepeng/systems/ScaleAnimationSystem;->world:Lcom/artemis/World;

    iget v4, v4, Lcom/artemis/World;->delta:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lde/fgerbig/spacepeng/components/Sprite;->scaleX:F

    .line 46
    iget v2, v1, Lde/fgerbig/spacepeng/components/Sprite;->scaleX:F

    iput v2, v1, Lde/fgerbig/spacepeng/components/Sprite;->scaleY:F

    .line 48
    iget v2, v1, Lde/fgerbig/spacepeng/components/Sprite;->scaleX:F

    iget v3, v0, Lde/fgerbig/spacepeng/components/ScaleAnimation;->max:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 49
    iget v2, v0, Lde/fgerbig/spacepeng/components/ScaleAnimation;->max:F

    iput v2, v1, Lde/fgerbig/spacepeng/components/Sprite;->scaleX:F

    .line 50
    iput-boolean v5, v0, Lde/fgerbig/spacepeng/components/ScaleAnimation;->active:Z

    .line 56
    .end local v1    # "sprite":Lde/fgerbig/spacepeng/components/Sprite;
    :cond_0
    :goto_0
    return-void

    .line 51
    .restart local v1    # "sprite":Lde/fgerbig/spacepeng/components/Sprite;
    :cond_1
    iget v2, v1, Lde/fgerbig/spacepeng/components/Sprite;->scaleX:F

    iget v3, v0, Lde/fgerbig/spacepeng/components/ScaleAnimation;->min:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 52
    iget v2, v0, Lde/fgerbig/spacepeng/components/ScaleAnimation;->min:F

    iput v2, v1, Lde/fgerbig/spacepeng/components/Sprite;->scaleX:F

    .line 53
    iput-boolean v5, v0, Lde/fgerbig/spacepeng/components/ScaleAnimation;->active:Z

    goto :goto_0
.end method
