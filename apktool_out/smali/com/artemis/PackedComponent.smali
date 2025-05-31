.class public abstract Lcom/artemis/PackedComponent;
.super Lcom/artemis/Component;
.source "PackedComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artemis/PackedComponent$DisposedWithWorld;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/artemis/Component;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method protected abstract ensureCapacity(I)V
.end method

.method protected abstract forEntity(Lcom/artemis/Entity;)V
.end method

.method protected abstract reset()V
.end method
