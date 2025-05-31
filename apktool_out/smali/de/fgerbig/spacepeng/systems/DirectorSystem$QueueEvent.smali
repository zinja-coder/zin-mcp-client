.class abstract Lde/fgerbig/spacepeng/systems/DirectorSystem$QueueEvent;
.super Ljava/lang/Object;
.source "DirectorSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/fgerbig/spacepeng/systems/DirectorSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "QueueEvent"
.end annotation


# instance fields
.field delay:F

.field final synthetic this$0:Lde/fgerbig/spacepeng/systems/DirectorSystem;


# direct methods
.method public constructor <init>(Lde/fgerbig/spacepeng/systems/DirectorSystem;F)V
    .locals 0
    .param p2, "delay"    # F

    .prologue
    .line 54
    iput-object p1, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem$QueueEvent;->this$0:Lde/fgerbig/spacepeng/systems/DirectorSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p2, p0, Lde/fgerbig/spacepeng/systems/DirectorSystem$QueueEvent;->delay:F

    .line 56
    return-void
.end method


# virtual methods
.method abstract run()V
.end method
