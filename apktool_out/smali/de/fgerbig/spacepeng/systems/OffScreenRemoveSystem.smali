.class public Lde/fgerbig/spacepeng/systems/OffScreenRemoveSystem;
.super Lcom/artemis/systems/EntityProcessingSystem;
.source "OffScreenRemoveSystem.java"


# instance fields
.field pm:Lcom/artemis/ComponentMapper;
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


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lde/fgerbig/spacepeng/components/OffScreenRemove;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lde/fgerbig/spacepeng/components/Position;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/artemis/Aspect;->getAspectForAll([Ljava/lang/Class;)Lcom/artemis/Aspect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/artemis/systems/EntityProcessingSystem;-><init>(Lcom/artemis/Aspect;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected process(Lcom/artemis/Entity;)V
    .locals 5
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    const/high16 v4, 0x44480000    # 800.0f

    const/high16 v3, 0x43f00000    # 480.0f

    const/4 v2, 0x0

    .line 39
    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/OffScreenRemoveSystem;->pm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v1, p1}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v0

    check-cast v0, Lde/fgerbig/spacepeng/components/Position;

    .line 42
    .local v0, "position":Lde/fgerbig/spacepeng/components/Position;
    iget v1, v0, Lde/fgerbig/spacepeng/components/Position;->x:F

    add-float/2addr v1, v4

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    iget v1, v0, Lde/fgerbig/spacepeng/components/Position;->x:F

    cmpl-float v1, v1, v4

    if-gtz v1, :cond_0

    iget v1, v0, Lde/fgerbig/spacepeng/components/Position;->y:F

    add-float/2addr v1, v3

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    iget v1, v0, Lde/fgerbig/spacepeng/components/Position;->y:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    .line 46
    :cond_0
    invoke-virtual {p1}, Lcom/artemis/Entity;->deleteFromWorld()V

    .line 48
    :cond_1
    return-void
.end method
