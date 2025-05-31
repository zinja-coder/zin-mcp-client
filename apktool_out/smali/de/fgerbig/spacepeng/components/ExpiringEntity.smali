.class public Lde/fgerbig/spacepeng/components/ExpiringEntity;
.super Lcom/artemis/Component;
.source "ExpiringEntity.java"


# annotations
.annotation build Lcom/artemis/annotations/PooledWeaver;
.end annotation


# instance fields
.field public delay:F

.field public onExpiry:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/artemis/Component;-><init>()V

    return-void
.end method
