.class public Lde/fgerbig/spacepeng/components/Alien;
.super Lcom/artemis/Component;
.source "Alien.java"


# annotations
.annotation build Lcom/artemis/annotations/PooledWeaver;
.end annotation


# static fields
.field public static final SPRITE_NAME:Ljava/lang/String; = "alien"

.field public static final SPRITE_NAME_BOSS:Ljava/lang/String; = "alienboss"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/artemis/Component;-><init>()V

    return-void
.end method
