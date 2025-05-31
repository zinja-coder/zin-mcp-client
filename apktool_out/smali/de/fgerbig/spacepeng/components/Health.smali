.class public Lde/fgerbig/spacepeng/components/Health;
.super Lcom/artemis/Component;
.source "Health.java"


# annotations
.annotation build Lcom/artemis/annotations/PooledWeaver;
.end annotation


# instance fields
.field public health:F

.field public maximumHealth:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/artemis/Component;-><init>()V

    return-void
.end method
