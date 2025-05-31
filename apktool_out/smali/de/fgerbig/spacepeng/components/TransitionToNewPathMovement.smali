.class public Lde/fgerbig/spacepeng/components/TransitionToNewPathMovement;
.super Lcom/artemis/Component;
.source "TransitionToNewPathMovement.java"


# annotations
.annotation build Lcom/artemis/annotations/PooledWeaver;
.end annotation


# instance fields
.field public factor:F

.field public pathFunctionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pathFunctionId"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/artemis/Component;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lde/fgerbig/spacepeng/components/TransitionToNewPathMovement;->factor:F

    .line 29
    iput-object p1, p0, Lde/fgerbig/spacepeng/components/TransitionToNewPathMovement;->pathFunctionId:Ljava/lang/String;

    .line 30
    return-void
.end method
