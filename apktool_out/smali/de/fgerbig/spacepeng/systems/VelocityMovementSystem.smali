.class public Lde/fgerbig/spacepeng/systems/VelocityMovementSystem;
.super Lcom/artemis/systems/EntityProcessingSystem;
.source "VelocityMovementSystem.java"


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
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lde/fgerbig/spacepeng/components/Position;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lde/fgerbig/spacepeng/components/Velocity;

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
    iget-object v2, p0, Lde/fgerbig/spacepeng/systems/VelocityMovementSystem;->pos_cm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v2, p1}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v0

    check-cast v0, Lde/fgerbig/spacepeng/components/Position;

    .line 41
    .local v0, "position":Lde/fgerbig/spacepeng/components/Position;
    iget-object v2, p0, Lde/fgerbig/spacepeng/systems/VelocityMovementSystem;->vlc_cm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v2, p1}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v1

    check-cast v1, Lde/fgerbig/spacepeng/components/Velocity;

    .line 43
    .local v1, "velocity":Lde/fgerbig/spacepeng/components/Velocity;
    if-nez v1, :cond_0

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    iget v2, v0, Lde/fgerbig/spacepeng/components/Position;->x:F

    iget v3, v1, Lde/fgerbig/spacepeng/components/Velocity;->vectorX:F

    iget-object v4, p0, Lde/fgerbig/spacepeng/systems/VelocityMovementSystem;->world:Lcom/artemis/World;

    iget v4, v4, Lcom/artemis/World;->delta:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Lde/fgerbig/spacepeng/components/Position;->x:F

    .line 48
    iget v2, v0, Lde/fgerbig/spacepeng/components/Position;->y:F

    iget v3, v1, Lde/fgerbig/spacepeng/components/Velocity;->vectorY:F

    iget-object v4, p0, Lde/fgerbig/spacepeng/systems/VelocityMovementSystem;->world:Lcom/artemis/World;

    iget v4, v4, Lcom/artemis/World;->delta:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Lde/fgerbig/spacepeng/components/Position;->y:F

    goto :goto_0
.end method
