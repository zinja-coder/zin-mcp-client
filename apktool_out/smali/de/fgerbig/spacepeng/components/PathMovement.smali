.class public Lde/fgerbig/spacepeng/components/PathMovement;
.super Lcom/artemis/Component;
.source "PathMovement.java"


# instance fields
.field public pathFunctionId:Ljava/lang/String;

.field public rad:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/artemis/Component;-><init>()V

    .line 26
    const-string v0, "defaultMovement"

    iput-object v0, p0, Lde/fgerbig/spacepeng/components/PathMovement;->pathFunctionId:Ljava/lang/String;

    return-void
.end method
