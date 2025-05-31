.class public Lde/fgerbig/spacepeng/components/AttackPathMovement;
.super Lcom/artemis/Component;
.source "AttackPathMovement.java"


# annotations
.annotation build Lcom/artemis/annotations/PooledWeaver;
.end annotation


# instance fields
.field public pathFunctionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/artemis/Component;-><init>()V

    .line 26
    const-string v0, "defaultAttack"

    iput-object v0, p0, Lde/fgerbig/spacepeng/components/AttackPathMovement;->pathFunctionId:Ljava/lang/String;

    return-void
.end method
