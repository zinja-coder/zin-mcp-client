.class public Lde/fgerbig/spacepeng/components/powerup/Coin;
.super Lcom/artemis/Component;
.source "Coin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/fgerbig/spacepeng/components/powerup/Coin$Type;
    }
.end annotation


# static fields
.field public static final SPRITE_NAME:Ljava/lang/String; = "coin"


# instance fields
.field public type:Lde/fgerbig/spacepeng/components/powerup/Coin$Type;


# direct methods
.method public constructor <init>(Lde/fgerbig/spacepeng/components/powerup/Coin$Type;)V
    .locals 0
    .param p1, "type"    # Lde/fgerbig/spacepeng/components/powerup/Coin$Type;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/artemis/Component;-><init>()V

    .line 49
    iput-object p1, p0, Lde/fgerbig/spacepeng/components/powerup/Coin;->type:Lde/fgerbig/spacepeng/components/powerup/Coin$Type;

    .line 50
    return-void
.end method
